part of '../tdapi.dart';

class EditMessageText extends TdFunction {
  /// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side
  EditMessageText(
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

  /// [inputMessageContent] New text content of the message. Should be of type InputMessageText
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditMessageText.fromJson(Map<String, dynamic> json) {
    return EditMessageText(
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

  static const CONSTRUCTOR = 'editMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
