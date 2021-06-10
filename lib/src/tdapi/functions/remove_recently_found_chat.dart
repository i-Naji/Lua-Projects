part of '../tdapi.dart';

class RemoveRecentlyFoundChat extends TdFunction {
  /// Removes a chat from the list of recently found chats
  RemoveRecentlyFoundChat({required this.chatId, this.extra});

  /// [chatId] Identifier of the chat to be removed
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveRecentlyFoundChat.fromJson(Map<String, dynamic> json) {
    return RemoveRecentlyFoundChat(
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

  static const CONSTRUCTOR = 'removeRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
