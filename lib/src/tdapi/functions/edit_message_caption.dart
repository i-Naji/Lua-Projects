part of '../tdapi.dart';

class EditMessageCaption extends TdFunction {
  /// Edits the message content caption. Returns the edited message after the edit is completed on the server side
  EditMessageCaption(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup,
      required this.caption,
      this.extra});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  ReplyMarkup replyMarkup;

  /// [caption] New message content caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditMessageCaption.fromJson(Map<String, dynamic> json) {
    return EditMessageCaption(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{}),
      caption: FormattedText.fromJson(json['caption'] ?? <String, dynamic>{}),
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
      "caption": this.caption.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
