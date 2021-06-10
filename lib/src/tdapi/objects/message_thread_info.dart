part of '../tdapi.dart';

class MessageThreadInfo extends TdObject {
  /// Contains information about a message thread
  MessageThreadInfo(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyInfo,
      required this.messages,
      this.draftMessage,
      this.extra});

  /// [chatId] Identifier of the chat to which the message thread belongs
  int chatId;

  /// [messageThreadId] Message thread identifier, unique within the chat
  int messageThreadId;

  /// [replyInfo] Contains information about the message thread
  MessageReplyInfo replyInfo;

  /// [messages] The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  List<Message> messages;

  /// [draftMessage] A draft of a message in the message thread; may be null
  DraftMessage? draftMessage;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory MessageThreadInfo.fromJson(Map<String, dynamic> json) {
    return MessageThreadInfo(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
      replyInfo:
          MessageReplyInfo.fromJson(json['reply_info'] ?? <String, dynamic>{}),
      messages: List<Message>.from((json['messages'] ?? [])
          .map((item) => Message.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_thread_id": this.messageThreadId,
      "reply_info": this.replyInfo.toJson(),
      "messages": this.messages.map((i) => i.toJson()).toList(),
      "draft_message":
          this.draftMessage == null ? null : this.draftMessage!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageThreadInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
