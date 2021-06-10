part of '../tdapi.dart';

class GetScopeNotificationSettings extends TdFunction {
  /// Returns the notification settings for chats of a given type
  GetScopeNotificationSettings({required this.scope, this.extra});

  /// [scope] Types of chats for which to return the notification settings information
  NotificationSettingsScope scope;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    return GetScopeNotificationSettings(
      scope: NotificationSettingsScope.fromJson(
          json['scope'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
