part of '../tdapi.dart';

class ToggleChatDefaultDisableNotification extends TdFunction {
  /// Changes the value of the default disable_notification parameter, used when a message is sent to a chat
  ToggleChatDefaultDisableNotification(
      {required this.chatId,
      required this.defaultDisableNotification,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [defaultDisableNotification] New value of default_disable_notification
  bool defaultDisableNotification;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ToggleChatDefaultDisableNotification.fromJson(
      Map<String, dynamic> json) {
    return ToggleChatDefaultDisableNotification(
      chatId: json['chat_id'] ?? 0,
      defaultDisableNotification: json['default_disable_notification'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "default_disable_notification": this.defaultDisableNotification,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleChatDefaultDisableNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
