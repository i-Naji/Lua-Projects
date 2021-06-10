part of '../tdapi.dart';

class GetChatStatisticsUrl extends TdFunction {
  /// Returns an HTTP URL with the chat statistics. Currently this method of getting the statistics are disabled and can be deleted in the future
  GetChatStatisticsUrl(
      {required this.chatId,
      required this.parameters,
      required this.isDark,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [parameters] Parameters from "tg://statsrefresh?params=******" link
  String parameters;

  /// [isDark] Pass true if a URL with the dark theme must be returned
  bool isDark;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatStatisticsUrl.fromJson(Map<String, dynamic> json) {
    return GetChatStatisticsUrl(
      chatId: json['chat_id'] ?? 0,
      parameters: json['parameters'] ?? "",
      isDark: json['is_dark'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "parameters": this.parameters,
      "is_dark": this.isDark,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatStatisticsUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
