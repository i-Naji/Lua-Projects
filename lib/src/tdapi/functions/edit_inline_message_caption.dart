part of '../tdapi.dart';

class EditInlineMessageCaption extends TdFunction {
  /// Edits the caption of an inline message sent via a bot; for bots only
  EditInlineMessageCaption(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.caption,
      this.extra});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  ReplyMarkup replyMarkup;

  /// [caption] New message content caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditInlineMessageCaption.fromJson(Map<String, dynamic> json) {
    return EditInlineMessageCaption(
      inlineMessageId: json['inline_message_id'] ?? "",
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
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup.toJson(),
      "caption": this.caption.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
