part of '../tdapi.dart';

class SendMessageAlbum extends TdFunction {
  /// Sends 2-10 messages grouped together into an album. Currently only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
  SendMessageAlbum(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.inputMessageContents,
      this.extra});

  /// [chatId] Target chat
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the messages will be sent
  int messageThreadId;

  /// [replyToMessageId] Identifier of a message to reply to or 0
  int replyToMessageId;

  /// [options] Options to be used to send the messages
  MessageSendOptions options;

  /// [inputMessageContents] Contents of messages to be sent. At most 10 messages can be added to an album
  List<InputMessageContent> inputMessageContents;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendMessageAlbum.fromJson(Map<String, dynamic> json) {
    return SendMessageAlbum(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
      replyToMessageId: json['reply_to_message_id'] ?? 0,
      options:
          MessageSendOptions.fromJson(json['options'] ?? <String, dynamic>{}),
      inputMessageContents: List<InputMessageContent>.from(
          (json['input_message_contents'] ?? [])
              .map((item) =>
                  InputMessageContent.fromJson(item ?? <String, dynamic>{}))
              .toList()),
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
      "input_message_contents":
          this.inputMessageContents.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendMessageAlbum';

  @override
  String getConstructor() => CONSTRUCTOR;
}
