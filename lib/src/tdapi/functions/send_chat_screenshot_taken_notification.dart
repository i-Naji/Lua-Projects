part of '../tdapi.dart';

class SendChatScreenshotTakenNotification extends TdFunction {
  /// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
  SendChatScreenshotTakenNotification({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendChatScreenshotTakenNotification.fromJson(
      Map<String, dynamic> json) {
    return SendChatScreenshotTakenNotification(
      chatId: json['chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendChatScreenshotTakenNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
