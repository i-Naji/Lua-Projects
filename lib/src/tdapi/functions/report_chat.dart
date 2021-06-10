part of '../tdapi.dart';

class ReportChat extends TdFunction {
  /// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if this is a private chats with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
  ReportChat(
      {required this.chatId,
      required this.reason,
      required this.messageIds,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [reason] The reason for reporting the chat
  ChatReportReason reason;

  /// [messageIds] Identifiers of reported messages, if any
  List<int> messageIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ReportChat.fromJson(Map<String, dynamic> json) {
    return ReportChat(
      chatId: json['chat_id'] ?? 0,
      reason: ChatReportReason.fromJson(json['reason'] ?? <String, dynamic>{}),
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
      "reason": this.reason.toJson(),
      "message_ids": this.messageIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reportChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
