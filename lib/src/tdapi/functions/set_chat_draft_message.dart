part of '../tdapi.dart';

class SetChatDraftMessage extends TdFunction {
  /// Changes the draft message in a chat
  SetChatDraftMessage(
      {required this.chatId,
      required this.messageThreadId,
      this.draftMessage,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the draft was changed
  int messageThreadId;

  /// [draftMessage] New draft message; may be null
  DraftMessage? draftMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatDraftMessage.fromJson(Map<String, dynamic> json) {
    return SetChatDraftMessage(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
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
      "draft_message":
          this.draftMessage == null ? null : this.draftMessage!.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatDraftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
