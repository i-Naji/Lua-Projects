part of '../tdapi.dart';

class ChatEvent extends TdObject {
  /// Represents a chat event
  ChatEvent(
      {required this.id,
      required this.date,
      required this.userId,
      required this.action});

  /// [id] Chat event identifier
  int id;

  /// [date] Point in time (Unix timestamp) when the event happened
  int date;

  /// [userId] Identifier of the user who performed the action that triggered the event
  int userId;

  /// [action] Action performed by the user
  ChatEventAction action;

  /// Parse from a json
  factory ChatEvent.fromJson(Map<String, dynamic> json) {
    return ChatEvent(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      date: json['date'] ?? 0,
      userId: json['user_id'] ?? 0,
      action: ChatEventAction.fromJson(json['action'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "date": this.date,
      "user_id": this.userId,
      "action": this.action.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
}
