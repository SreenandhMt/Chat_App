part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = _Init;
  const factory SettingsEvent.createAppLock({required int pin}) =
      _CreateAppLock;
  const factory SettingsEvent.getAppLock() = _GetAppLock;
  const factory SettingsEvent.deleteAppLock() = _DeleteAppLock;
  const factory SettingsEvent.forgetAppLock() = _ForgetAppLock;

  const factory SettingsEvent.getLanguage() = _GetLanguage;
  const factory SettingsEvent.changeLanguage({
    required String languageCode,
    required String languageName,
  }) = _ChangeLanguage;

  const factory SettingsEvent.getWallpaperIndex() = _GetWallpaperIndex;
  const factory SettingsEvent.changeWallpaper({required int index}) =
      _ChangeWallpaper;
  const factory SettingsEvent.getNotificationSettings() =
      _GetNotificationSettings;
  const factory SettingsEvent.turnNotification(
      {required NotificationType type,
      required bool status}) = _TurnNotification;
  const factory SettingsEvent.editProfile(
      {String? name, String? profileImagePath}) = _EditProfile;
  const factory SettingsEvent.setProfilePath({required String path}) =
      _SetProfilePath;
}
