part of '../tdapi.dart';

class GetChatNotificationSettingsExceptions extends TdFunction {
  /// Returns list of chats with non-default notification settings
  GetChatNotificationSettingsExceptions(
      {required this.scope, required this.compareSound, this.extra});

  /// [scope] If specified, only chats from the specified scope will be returned
  NotificationSettingsScope scope;

  /// [compareSound] If true, also chats with non-default sound will be returned
  bool compareSound;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatNotificationSettingsExceptions.fromJson(
      Map<String, dynamic> json) {
    return GetChatNotificationSettingsExceptions(
      scope: NotificationSettingsScope.fromJson(
          json['scope'] ?? <String, dynamic>{}),
      compareSound: json['compare_sound'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope.toJson(),
      "compare_sound": this.compareSound,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatNotificationSettingsExceptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
