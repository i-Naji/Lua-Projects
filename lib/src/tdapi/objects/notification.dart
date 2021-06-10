part of '../tdapi.dart';

class Notification extends TdObject {
  /// Contains information about a notification
  Notification(
      {required this.id,
      required this.date,
      required this.isSilent,
      required this.type});

  /// [id] Unique persistent identifier of this notification
  int id;

  /// [date] Notification date
  int date;

  /// [isSilent] True, if the notification was initially silent
  bool isSilent;

  /// [type] Notification type
  NotificationType type;

  /// Parse from a json
  factory Notification.fromJson(Map<String, dynamic> json) {
    return Notification(
      id: json['id'] ?? 0,
      date: json['date'] ?? 0,
      isSilent: json['is_silent'] ?? false,
      type: NotificationType.fromJson(json['type'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "date": this.date,
      "is_silent": this.isSilent,
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'notification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
