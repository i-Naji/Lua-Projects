part of '../tdapi.dart';

class ResendMessages extends TdFunction {
  /// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed.. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message
  ResendMessages({required this.chatId, required this.messageIds, this.extra});

  /// [chatId] Identifier of the chat to send messages
  int chatId;

  /// [messageIds] Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
  List<int> messageIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResendMessages.fromJson(Map<String, dynamic> json) {
    return ResendMessages(
      chatId: json['chat_id'] ?? 0,
      messageIds: List<int>.from(
          (json['message_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
