part of '../tdapi.dart';

class SendInlineQueryResultMessage extends TdFunction {
  /// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
  SendInlineQueryResultMessage(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.queryId,
      required this.resultId,
      required this.hideViaBot,
      this.extra});

  /// [chatId] Target chat
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the message will be sent
  int messageThreadId;

  /// [replyToMessageId] Identifier of a message to reply to or 0
  int replyToMessageId;

  /// [options] Options to be used to send the message
  MessageSendOptions options;

  /// [queryId] Identifier of the inline query
  int queryId;

  /// [resultId] Identifier of the inline result
  String resultId;

  /// [hideViaBot] If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
  bool hideViaBot;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendInlineQueryResultMessage.fromJson(Map<String, dynamic> json) {
    return SendInlineQueryResultMessage(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
      replyToMessageId: json['reply_to_message_id'] ?? 0,
      options:
          MessageSendOptions.fromJson(json['options'] ?? <String, dynamic>{}),
      queryId: int.tryParse(json['query_id'] ?? "") ?? 0,
      resultId: json['result_id'] ?? "",
      hideViaBot: json['hide_via_bot'] ?? false,
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
      "query_id": this.queryId,
      "result_id": this.resultId,
      "hide_via_bot": this.hideViaBot,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendInlineQueryResultMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
