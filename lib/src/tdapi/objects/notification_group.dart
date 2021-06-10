part of '../tdapi.dart';

class NotificationGroup extends TdObject {
  /// Describes a group of notifications
  NotificationGroup(
      {required this.id,
      required this.type,
      required this.chatId,
      required this.totalCount,
      required this.notifications});

  /// [id] Unique persistent auto-incremented from 1 identifier of the notification group
  int id;

  /// [type] Type of the group
  NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group belong
  int chatId;

  /// [totalCount] Total number of active notifications in the group
  int totalCount;

  /// [notifications] The list of active notifications
  List<Notification> notifications;

  /// Parse from a json
  factory NotificationGroup.fromJson(Map<String, dynamic> json) {
    return NotificationGroup(
      id: json['id'] ?? 0,
      type: NotificationGroupType.fromJson(json['type'] ?? <String, dynamic>{}),
      chatId: json['chat_id'] ?? 0,
      totalCount: json['total_count'] ?? 0,
      notifications: List<Notification>.from((json['notifications'] ?? [])
          .map((item) => Notification.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "type": this.type.toJson(),
      "chat_id": this.chatId,
      "total_count": this.totalCount,
      "notifications": this.notifications.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'notificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
