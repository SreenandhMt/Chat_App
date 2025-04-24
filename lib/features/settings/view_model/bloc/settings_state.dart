part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.settingsState({
    @Default(null) int? appLock,
    @Default("en") String languageCode,
    @Default("English") String languageName,
    @Default(0) int wallpaperIndex,
    @Default(null) List<NotificationModel>? notificationSetting,
    @Default(null) UserModels? userModel,
    @Default(null) String? path,
  }) = _SettingsState;
}
