part of '../tdapi.dart';

class SetChatSlowModeDelay extends TdFunction {
  /// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights
  SetChatSlowModeDelay(
      {required this.chatId, required this.slowModeDelay, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [slowModeDelay] New slow mode delay for the chat; must be one of 0, 10, 30, 60, 300, 900, 3600
  int slowModeDelay;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatSlowModeDelay.fromJson(Map<String, dynamic> json) {
    return SetChatSlowModeDelay(
      chatId: json['chat_id'] ?? 0,
      slowModeDelay: json['slow_mode_delay'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "slow_mode_delay": this.slowModeDelay,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatSlowModeDelay';

  @override
  String getConstructor() => CONSTRUCTOR;
}
