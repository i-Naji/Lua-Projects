part of '../tdapi.dart';

class RemoveNotificationGroup extends TdFunction {
  /// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
  RemoveNotificationGroup(
      {required this.notificationGroupId,
      required this.maxNotificationId,
      this.extra});

  /// [notificationGroupId] Notification group identifier
  int notificationGroupId;

  /// [maxNotificationId] The maximum identifier of removed notifications
  int maxNotificationId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveNotificationGroup.fromJson(Map<String, dynamic> json) {
    return RemoveNotificationGroup(
      notificationGroupId: json['notification_group_id'] ?? 0,
      maxNotificationId: json['max_notification_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "max_notification_id": this.maxNotificationId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeNotificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
