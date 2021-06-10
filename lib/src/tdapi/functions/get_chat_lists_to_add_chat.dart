part of '../tdapi.dart';

class GetChatListsToAddChat extends TdFunction {
  /// Returns chat lists to which the chat can be added. This is an offline request
  GetChatListsToAddChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatListsToAddChat.fromJson(Map<String, dynamic> json) {
    return GetChatListsToAddChat(
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

  static const CONSTRUCTOR = 'getChatListsToAddChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
