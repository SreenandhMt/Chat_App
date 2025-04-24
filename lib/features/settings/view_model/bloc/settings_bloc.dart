import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/settings/service/setting_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/notification_type.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(_SettingsState()) {
    on<_Init>((event, emit) async {
      try {
        final appLock = SettingService.getAppLock();
        final language = SettingService.getLanguage();
        final languageName = SettingService.getLanguageName();
        final wallpaper = SettingService.getWallpaper();
        final notificationSettings = SettingService.getNotificationSettings();
        final user = await SettingService.getUserProfile();
        emit(state.copyWith(
            appLock: appLock,
            languageCode: language,
            wallpaperIndex: wallpaper,
            notificationSetting: notificationSettings,
            languageName: languageName,
            userModel: user));
      } catch (e) {
        log(e.toString());
      }
    });
    //AppLock
    on<_CreateAppLock>((event, emit) {
      SettingService.createAppLock(pin: event.pin);
      final appLock = SettingService.getAppLock();
      emit(state.copyWith(appLock: appLock));
    });
    on<_GetAppLock>((event, emit) async {
      final appLock = SettingService.getAppLock();
      emit(state.copyWith(appLock: appLock));
    });
    on<_DeleteAppLock>((event, emit) {
      SettingService.deleteAppLock();
      emit(state.copyWith(appLock: null));
    });
    on<_ForgetAppLock>((event, emit) {
      SettingService.forgetAppLock();
      emit(state.copyWith(appLock: null));
    });

    //language
    on<_GetLanguage>((event, emit) {
      final language = SettingService.getLanguage();
      emit(state.copyWith(languageCode: language));
    });
    on<_ChangeLanguage>((event, emit) {
      SettingService.changeLanguage(event.languageCode, event.languageName);
      emit(state.copyWith(
          languageCode: event.languageCode, languageName: event.languageName));
    });

    //wallpaper
    on<_GetWallpaperIndex>((event, emit) {
      final wallpaper = SettingService.getWallpaper();
      emit(state.copyWith(wallpaperIndex: wallpaper));
    });
    on<_ChangeWallpaper>((event, emit) {
      SettingService.setWallpaper(event.index);
      emit(state.copyWith(wallpaperIndex: event.index));
    });
    //notification settings
    //wallpaper
    on<_TurnNotification>((event, emit) {
      SettingService.setNotificationSetting(event.type, event.status);
      final notificationSettings = SettingService.getNotificationSettings();
      emit(state.copyWith(notificationSetting: notificationSettings));
    });

    //editProfile
    on<_EditProfile>((event, emit) async {
      await SettingService.editProfile(
          name: event.name, path: event.profileImagePath);
      final user = await SettingService.getUserProfile();
      emit(state.copyWith(userModel: user));
    });
    on<_SetProfilePath>((event, emit) async {
      emit(state.copyWith(path: event.path));
    });
  }
}
