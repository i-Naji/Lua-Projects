part of '../tdapi.dart';

class ViewMessages extends TdFunction {
  /// Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
  ViewMessages(
      {required this.chatId,
      required this.messageThreadId,
      required this.messageIds,
      required this.forceRead,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the messages are being viewed
  int messageThreadId;

  /// [messageIds] The identifiers of the messages being viewed
  List<int> messageIds;

  /// [forceRead] True, if messages in closed chats should be marked as read by the request
  bool forceRead;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ViewMessages.fromJson(Map<String, dynamic> json) {
    return ViewMessages(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
      messageIds: List<int>.from(
          (json['message_ids'] ?? []).map((item) => item ?? 0).toList()),
      forceRead: json['force_read'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_thread_id": this.messageThreadId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "force_read": this.forceRead,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'viewMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
