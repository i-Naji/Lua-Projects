part of '../tdapi.dart';

class CloseChat extends TdFunction {
  /// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed
  CloseChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CloseChat.fromJson(Map<String, dynamic> json) {
    return CloseChat(
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

  static const CONSTRUCTOR = 'closeChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
