part of '../tdapi.dart';

class EditInlineMessageText extends TdFunction {
  /// Edits the text of an inline text or game message sent via a bot; for bots only
  EditInlineMessageText(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.inputMessageContent,
      this.extra});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] New text content of the message. Should be of type InputMessageText
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditInlineMessageText.fromJson(Map<String, dynamic> json) {
    return EditInlineMessageText(
      inlineMessageId: json['inline_message_id'] ?? "",
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{}),
      inputMessageContent: InputMessageContent.fromJson(
          json['input_message_content'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
