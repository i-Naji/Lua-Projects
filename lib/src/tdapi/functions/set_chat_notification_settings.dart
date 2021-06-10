part of '../tdapi.dart';

class SetChatNotificationSettings extends TdFunction {
  /// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
  SetChatNotificationSettings(
      {required this.chatId, required this.notificationSettings, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [notificationSettings] New notification settings for the chat. If the chat is muted for more than 1 week, it is considered to be muted forever
  ChatNotificationSettings notificationSettings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    return SetChatNotificationSettings(
      chatId: json['chat_id'] ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "notification_settings": this.notificationSettings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
