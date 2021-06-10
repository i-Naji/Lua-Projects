part of '../tdapi.dart';

class AddRecentlyFoundChat extends TdFunction {
  /// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first
  AddRecentlyFoundChat({required this.chatId, this.extra});

  /// [chatId] Identifier of the chat to add
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddRecentlyFoundChat.fromJson(Map<String, dynamic> json) {
    return AddRecentlyFoundChat(
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

  static const CONSTRUCTOR = 'addRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
