import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> mapLocales = [
  MapLocale("en", LocaleData.EN),
];

mixin LocaleData {
  static String appName = "CometChat";
  static String continueText = "continueText";
  static String saveText = "saveText";
  static String authText = "AuthLoginText";
  static String introductionDescription = "IntroductionDescriptionText";
  static String introductionNextPageText = "IntroductionNextPageText";
  static String loginTitleText = "LoginTitleText";
  static String loginDescriptionText = "LoginDescriptionText";
  static String loginPhoneNumberHit = "LoginPhoneNumberHit";
  static String oTPVerificationTitleText = "NumberVerificationTitleText";
  static String oTPVerificationDescriptionText =
      "NumberVerificationDescriptionText";
  static String resetOTPText = "ResetOTPText";
  static String profileFirstNameHitText = "ProfileFirstNameHitText";
  static String profileLastNameHitText = "ProfileLastNameHitText";
  //chats home
  static String chatsText = "ChatsText";
  static String newGroupText = "NewGroupText";
  static String newContactText = "NewContactText";
  static String inviteFriendsText = "InviteFriendsText";
  static String settingsText = "SettingsText";
  static String searchText = "SearchText";
  //status home
  static String statusText = "StatusText";
  static String resetStatusText = "ResetStatusText";
  static String viewedStatusText = "ViewedStatusText";
  static String myStatusText = "MyStatusText";
  static String myStatusSubtitleText = "MyStatusSubtitleText";
  //calls home
  static String callsText = "CallsText";
  //*call > details
  static String callDetailsText = "CallDetailsText";
  static String participantsText = "ParticipantsText";
  static String recordingText = "RecordingText";
  static String historyText = "HistoryText";
  //settings
  static String editProfileText = "EditProfileText";
  static String securityText = "SecurityText";
  static String securitySubtitleText = "SecuritySubtitleText";
  static String notificationsText = "NotificationsText";
  static String notificationsSubtitleText = "NotificationsSubtitleText";
  static String languageText = "LanguageText";
  static String languageSubtitleText = "LanguageSubtitleText";
  static String wallpaperText = "WallpaperText";
  static String wallpaperSubtitleText = "WallpaperSubtitleText";
  static String privacyText = "PrivacyText";
  static String privacySubtitleText = "PrivacySubtitleText";
  static String aboutText = "AboutText";
  static String aboutSubtitleText = "AboutSubtitleText";
  //security
  static String appLockText = "AppLockText";
  static String turnOffAppLockText = "TurnOffAppLockText";
  static String twoStepVerificationText = "TwoStepVerificationText";
  //notification settings
  static String notificationSettingsText = "NotificationSettingsText";
  static String chatNotificationsText = "ChatNotificationsText";
  static String groupNotificationsText = "GroupNotificationsText";
  static String callNotificationsText = "CallNotificationsText";
  static String missedCallNotificationsText = "MissedCallNotificationsText";
  static String soundText = "SoundText";
  static String vibrationText = "VibrationText";
  static String inAppAlertsText = "InAppAlertsText";
  //language
  static String languageTitleText = "LanguageTitleText";
  //wallpaper
  static String wallpaperTitleText = "WallpaperTitleText";
  //about
  static String termsAndConditionText = "TermsAndConditionText";
  static String jobVacancyText = "JobVacancyText";
  static String partnersText = "PartnersText";
  static String contactUsText = "ContactUsText";
  static String feedbackText = "FeedbackText";
  static String rateUsText = "RateUsText";
  static String visitWebsiteText = "VisitWebsiteText";
  static String followSocialMediaText = "FollowSocialMediaText";

  //chat page
  static String chatHitText = "ChatHitText";
  //chat > user profile
  static String voiceCallText = "VoiceCallText";
  static String videoCallText = "VideoCallText";
  static String shareText = "ShareText";
  static String addToContactText = "AddToContactText";
  static String muteNotificationsText = "MuteNotificationsText";
  static String aboutChatTitleText = "AboutChatTitleText";
  static String blockUserText = "BlockUserText";
  static String reportUserText = "ReportUserText";
  //group chat page
  static String groupChatHitText = "GroupChatHitText";
  static String addMembersText = "AddMembersText";
  static String viewMembersText = "ViewMembersText";
  static String bannedMembersText = "BannedMembersText";
  static String groupMembersText = "GroupMembersText";
  static String viewAllMembersText = "View All";
  static String leaveGroupText = "LeaveGroupText";
  static String deleteAndExitText = "DeleteAndExitText";

  static Map<String, dynamic> EN = {
    authText: "Login",
    appName: "CometChat",
    continueText: "Continue",
    saveText: "Save",
    introductionDescription:
        "Connect easily with\nyour family and friends\nover countries",
    introductionNextPageText: "Start Messaging",
    loginTitleText: "Enter Your Phone Number",
    loginDescriptionText:
        "Please confirm your country code and enter your phone number",
    loginPhoneNumberHit: "Phone Number",
    oTPVerificationTitleText: "Enter Code",
    oTPVerificationDescriptionText:
        "We have and you an SMS with the code to +19 7012123028",
    resetOTPText: "Resend OTP",
    profileFirstNameHitText: "First Name (Required)",
    profileLastNameHitText: "Last Name (Optional)",
    //chats home
    chatsText: "Chats",
    newGroupText: "New Group",
    newContactText: "New Contact",
    inviteFriendsText: "Invite Friends",
    settingsText: "Settings",
    searchText: "Search",
    //status home
    statusText: "Status",
    resetStatusText: "Reset Status",
    viewedStatusText: "Viewed Updates",
    myStatusText: "My Status",
    myStatusSubtitleText: "Tap to add status update",
    //calls home
    callsText: "Calls",
    //*call > details
    callDetailsText: "Call Details",
    participantsText: "Participants",
    recordingText: "Recording",
    historyText: "History",
    //settings
    editProfileText: "Edit Profile",
    securityText: "Security",
    securitySubtitleText: "App Lock, Two Step Verification",
    notificationsText: "Notifications",
    notificationsSubtitleText: "Edit your Notification Settings",
    languageText: "Language",
    languageSubtitleText: "Choose your preferred language",
    wallpaperText: "Wallpaper",
    wallpaperSubtitleText: "edit your chat wallpaper",
    privacyText: "Privacy",
    privacySubtitleText: "Block Contacts, disappearing messages",
    aboutText: "About",
    aboutSubtitleText: "Learn about CometChat",
    //security
    appLockText: "App Lock",
    turnOffAppLockText: "Turn Off App Lock",
    twoStepVerificationText: "Two Step Verification",
    //notification settings
    notificationSettingsText: "Notification Settings",
    chatNotificationsText: "Chat Notifications",
    groupNotificationsText: "Group Notifications",
    callNotificationsText: "Call Notifications",
    missedCallNotificationsText: "Missed Call Notifications",
    soundText: "Sound",
    vibrationText: "Vibration",
    inAppAlertsText: "In-App Alerts",
    //language
    languageTitleText: "Choose Language",
    //wallpaper
    wallpaperTitleText: "Wallpaper Settings",
    //about
    termsAndConditionText: "Terms & Conditions",
    jobVacancyText: "Job Vacancy",
    partnersText: "Partners",
    contactUsText: "Contact Us",
    feedbackText: "Feedback",
    rateUsText: "Rate Us",
    visitWebsiteText: "Visit Our Website",
    followSocialMediaText: "Follow us on Social Media",
    //chat page
    chatHitText: "Type your message...",
    //chat > user profile
    voiceCallText: "Voice Call",
    videoCallText: "Video Call",
    shareText: "Share",
    addToContactText: "Add to Contacts",
    muteNotificationsText: "Mute Notifications",
    aboutChatTitleText: "About and phone number",
    blockUserText: "Block User",
    reportUserText: "Report User",
    //group chat page
    groupChatHitText: "Type a message...",
    addMembersText: "Add Members",
    viewMembersText: "View Members",
    bannedMembersText: "Banned Members",
    groupMembersText: "%a Members",
    viewAllMembersText: "View All (%a more)",
    leaveGroupText: "Leave Group",
    deleteAndExitText: "Delete and Exit",
  };
}
