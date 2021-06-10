part of '../tdapi.dart';

class ChatNearby extends TdObject {
  /// Describes a chat located nearby
  ChatNearby({required this.chatId, required this.distance});

  /// [chatId] Chat identifier
  int chatId;

  /// [distance] Distance to the chat location, in meters
  int distance;

  /// Parse from a json
  factory ChatNearby.fromJson(Map<String, dynamic> json) {
    return ChatNearby(
      chatId: json['chat_id'] ?? 0,
      distance: json['distance'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "distance": this.distance,
    };
  }

  static const CONSTRUCTOR = 'chatNearby';

  @override
  String getConstructor() => CONSTRUCTOR;
}
