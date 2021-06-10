part of '../tdapi.dart';

class GetChat extends TdFunction {
  /// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
  GetChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChat.fromJson(Map<String, dynamic> json) {
    return GetChat(
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

  static const CONSTRUCTOR = 'getChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
