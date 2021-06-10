part of '../tdapi.dart';

class GetMessageStatistics extends TdFunction {
  /// Returns detailed statistics about a message. Can be used only if Message.can_get_statistics == true
  GetMessageStatistics(
      {required this.chatId,
      required this.messageId,
      required this.isDark,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [isDark] Pass true if a dark theme is used by the application
  bool isDark;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessageStatistics.fromJson(Map<String, dynamic> json) {
    return GetMessageStatistics(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      isDark: json['is_dark'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "is_dark": this.isDark,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
