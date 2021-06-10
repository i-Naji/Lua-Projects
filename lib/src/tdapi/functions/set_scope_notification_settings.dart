part of '../tdapi.dart';

class SetScopeNotificationSettings extends TdFunction {
  /// Changes notification settings for chats of a given type
  SetScopeNotificationSettings(
      {required this.scope, required this.notificationSettings, this.extra});

  /// [scope] Types of chats for which to change the notification settings
  NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings for the given scope
  ScopeNotificationSettings notificationSettings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    return SetScopeNotificationSettings(
      scope: NotificationSettingsScope.fromJson(
          json['scope'] ?? <String, dynamic>{}),
      notificationSettings: ScopeNotificationSettings.fromJson(
          json['notification_settings'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope.toJson(),
      "notification_settings": this.notificationSettings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
