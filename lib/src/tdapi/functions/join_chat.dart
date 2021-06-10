part of '../tdapi.dart';

class JoinChat extends TdFunction {
  /// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method
  JoinChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory JoinChat.fromJson(Map<String, dynamic> json) {
    return JoinChat(
      chatId: json['chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'joinChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
