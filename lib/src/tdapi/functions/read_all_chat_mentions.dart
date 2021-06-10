part of '../tdapi.dart';

class ReadAllChatMentions extends TdFunction {
  /// Marks all mentions in a chat as read
  ReadAllChatMentions({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ReadAllChatMentions.fromJson(Map<String, dynamic> json) {
    return ReadAllChatMentions(
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

  static const CONSTRUCTOR = 'readAllChatMentions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
