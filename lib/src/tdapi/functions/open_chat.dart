part of '../tdapi.dart';

class OpenChat extends TdFunction {
  /// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats)
  OpenChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory OpenChat.fromJson(Map<String, dynamic> json) {
    return OpenChat(
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

  static const CONSTRUCTOR = 'openChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
