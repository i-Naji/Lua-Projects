part of '../tdapi.dart';

class GetRepliedMessage extends TdFunction {
  /// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, and the invoice message for messages of the types messagePinMessage, messageGameScore, and messagePaymentSuccessful respectively
  GetRepliedMessage(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message reply to which to get
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetRepliedMessage.fromJson(Map<String, dynamic> json) {
    return GetRepliedMessage(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRepliedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
