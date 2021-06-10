part of '../tdapi.dart';

class EditMessageReplyMarkup extends TdFunction {
  /// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side
  EditMessageReplyMarkup(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup,
      this.extra});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [replyMarkup] The new message reply markup
  ReplyMarkup replyMarkup;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditMessageReplyMarkup.fromJson(Map<String, dynamic> json) {
    return EditMessageReplyMarkup(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
