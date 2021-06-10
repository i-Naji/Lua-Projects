part of '../tdapi.dart';

class GetChatPinnedMessage extends TdFunction {
  /// Returns information about a newest pinned message in the chat
  GetChatPinnedMessage({required this.chatId, this.extra});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatPinnedMessage.fromJson(Map<String, dynamic> json) {
    return GetChatPinnedMessage(
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

  static const CONSTRUCTOR = 'getChatPinnedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
