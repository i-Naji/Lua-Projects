part of '../tdapi.dart';

class EditMessageMedia extends TdFunction {
  /// Edits the content of a message with an animation, an audio, a document, a photo or a video. The media in the message can't be replaced if the message was set to self-destruct. Media can't be replaced by self-destructing media. Media in an album can be edited only to contain a photo or a video. Returns the edited message after the edit is completed on the server side
  EditMessageMedia(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup,
      required this.inputMessageContent,
      this.extra});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto or InputMessageVideo
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditMessageMedia.fromJson(Map<String, dynamic> json) {
    return EditMessageMedia(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
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
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}
