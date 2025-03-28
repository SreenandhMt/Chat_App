enum NotificationType {
  chat,
  group,
  call,
  missedCall,
  sound,
  vibration,
  inAppAlerts,
}

class NotificationModel {
  final NotificationType type;
  final bool status;

  NotificationModel({required this.type, required this.status});
}
