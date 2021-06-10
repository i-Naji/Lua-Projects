part of '../tdapi.dart';

class GetChatStatistics extends TdFunction {
  /// Returns detailed statistics about a chat. Currently this method can be used only for supergroups and channels. Can be used only if SupergroupFullInfo.can_get_statistics == true
  GetChatStatistics({required this.chatId, required this.isDark, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [isDark] Pass true if a dark theme is used by the application
  bool isDark;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatStatistics.fromJson(Map<String, dynamic> json) {
    return GetChatStatistics(
      chatId: json['chat_id'] ?? 0,
      isDark: json['is_dark'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_dark": this.isDark,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
