part of '../tdapi.dart';

class SendMessage extends TdFunction {
  /// Sends a message. Returns the sent message
  SendMessage(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.replyMarkup,
      required this.inputMessageContent,
      this.extra});

  /// [chatId] Target chat
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the message will be sent
  int messageThreadId;

  /// [replyToMessageId] Identifier of the message to reply to or 0
  int replyToMessageId;

  /// [options] Options to be used to send the message
  MessageSendOptions options;

  /// [replyMarkup] Markup for replying to the message; for bots only
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendMessage.fromJson(Map<String, dynamic> json) {
    return SendMessage(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
      replyToMessageId: json['reply_to_message_id'] ?? 0,
      options:
          MessageSendOptions.fromJson(json['options'] ?? <String, dynamic>{}),
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
      "message_thread_id": this.messageThreadId,
      "reply_to_message_id": this.replyToMessageId,
      "options": this.options.toJson(),
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
