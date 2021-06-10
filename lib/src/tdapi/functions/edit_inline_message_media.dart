part of '../tdapi.dart';

class EditInlineMessageMedia extends TdFunction {
  /// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only
  EditInlineMessageMedia(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.inputMessageContent,
      this.extra});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup; for bots only
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto or InputMessageVideo
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditInlineMessageMedia.fromJson(Map<String, dynamic> json) {
    return EditInlineMessageMedia(
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

  static const CONSTRUCTOR = 'editInlineMessageMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}
