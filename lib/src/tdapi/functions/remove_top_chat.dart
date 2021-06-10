part of '../tdapi.dart';

class RemoveTopChat extends TdFunction {
  /// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
  RemoveTopChat({required this.category, required this.chatId, this.extra});

  /// [category] Category of frequently used chats
  TopChatCategory category;

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveTopChat.fromJson(Map<String, dynamic> json) {
    return RemoveTopChat(
      category:
          TopChatCategory.fromJson(json['category'] ?? <String, dynamic>{}),
      chatId: json['chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "category": this.category.toJson(),
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeTopChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
