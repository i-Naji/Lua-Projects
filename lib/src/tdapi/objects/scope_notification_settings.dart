part of '../tdapi.dart';

class ScopeNotificationSettings extends TdObject {
  /// Contains information about notification settings for several chats
  ScopeNotificationSettings(
      {required this.muteFor,
      required this.sound,
      required this.showPreview,
      required this.disablePinnedMessageNotifications,
      required this.disableMentionNotifications,
      this.extra});

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  int muteFor;

  /// [sound] The name of an audio file to be used for notification sounds; only applies to iOS applications
  String sound;

  /// [showPreview] True, if message content should be displayed in notifications
  bool showPreview;

  /// [disablePinnedMessageNotifications] True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  bool disablePinnedMessageNotifications;

  /// [disableMentionNotifications] True, if notifications for messages with mentions will be created as for an ordinary unread message
  bool disableMentionNotifications;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    return ScopeNotificationSettings(
      muteFor: json['mute_for'] ?? 0,
      sound: json['sound'] ?? "",
      showPreview: json['show_preview'] ?? false,
      disablePinnedMessageNotifications:
          json['disable_pinned_message_notifications'] ?? false,
      disableMentionNotifications:
          json['disable_mention_notifications'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "mute_for": this.muteFor,
      "sound": this.sound,
      "show_preview": this.showPreview,
      "disable_pinned_message_notifications":
          this.disablePinnedMessageNotifications,
      "disable_mention_notifications": this.disableMentionNotifications,
    };
  }

  static const CONSTRUCTOR = 'scopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
