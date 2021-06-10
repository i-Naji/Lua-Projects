part of '../tdapi.dart';

class RemoveNotification extends TdFunction {
  /// Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user
  RemoveNotification(
      {required this.notificationGroupId,
      required this.notificationId,
      this.extra});

  /// [notificationGroupId] Identifier of notification group to which the notification belongs
  int notificationGroupId;

  /// [notificationId] Identifier of removed notification
  int notificationId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveNotification.fromJson(Map<String, dynamic> json) {
    return RemoveNotification(
      notificationGroupId: json['notification_group_id'] ?? 0,
      notificationId: json['notification_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "notification_id": this.notificationId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
