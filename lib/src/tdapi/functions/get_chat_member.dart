part of '../tdapi.dart';

class GetChatMember extends TdFunction {
  /// Returns information about a single member of a chat
  GetChatMember({required this.chatId, required this.userId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatMember.fromJson(Map<String, dynamic> json) {
    return GetChatMember(
      chatId: json['chat_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
