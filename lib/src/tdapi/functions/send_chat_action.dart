part of '../tdapi.dart';

class SendChatAction extends TdFunction {
  /// Sends a notification about user activity in a chat
  SendChatAction(
      {required this.chatId,
      required this.messageThreadId,
      required this.action,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the action was performed
  int messageThreadId;

  /// [action] The action description
  ChatAction action;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendChatAction.fromJson(Map<String, dynamic> json) {
    return SendChatAction(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
      action: ChatAction.fromJson(json['action'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_thread_id": this.messageThreadId,
      "action": this.action.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendChatAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
