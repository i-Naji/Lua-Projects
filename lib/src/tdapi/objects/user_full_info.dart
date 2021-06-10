part of '../tdapi.dart';

class UserFullInfo extends TdObject {
  /// Contains full information about a user
  UserFullInfo(
      {this.photo,
      required this.isBlocked,
      required this.canBeCalled,
      required this.supportsVideoCalls,
      required this.hasPrivateCalls,
      required this.needPhoneNumberPrivacyException,
      required this.bio,
      required this.shareText,
      required this.groupInCommonCount,
      this.botInfo,
      this.extra});

  /// [photo] User profile photo; may be null
  ChatPhoto? photo;

  /// [isBlocked] True, if the user is blocked by the current user
  bool isBlocked;

  /// [canBeCalled] True, if the user can be called
  bool canBeCalled;

  /// [supportsVideoCalls] True, if a video call can be created with the user
  bool supportsVideoCalls;

  /// [hasPrivateCalls] True, if the user can't be called due to their privacy settings
  bool hasPrivateCalls;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  bool needPhoneNumberPrivacyException;

  /// [bio] A short user bio
  String bio;

  /// [shareText] For bots, the text that is included with the link when users share the bot
  String shareText;

  /// [groupInCommonCount] Number of group chats where both the other user and the current user are a member; 0 for the current user
  int groupInCommonCount;

  /// [botInfo] If the user is a bot, information about the bot; may be null
  BotInfo? botInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UserFullInfo.fromJson(Map<String, dynamic> json) {
    return UserFullInfo(
      photo: ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{}),
      isBlocked: json['is_blocked'] ?? false,
      canBeCalled: json['can_be_called'] ?? false,
      supportsVideoCalls: json['supports_video_calls'] ?? false,
      hasPrivateCalls: json['has_private_calls'] ?? false,
      needPhoneNumberPrivacyException:
          json['need_phone_number_privacy_exception'] ?? false,
      bio: json['bio'] ?? "",
      shareText: json['share_text'] ?? "",
      groupInCommonCount: json['group_in_common_count'] ?? 0,
      botInfo: BotInfo.fromJson(json['bot_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "is_blocked": this.isBlocked,
      "can_be_called": this.canBeCalled,
      "supports_video_calls": this.supportsVideoCalls,
      "has_private_calls": this.hasPrivateCalls,
      "need_phone_number_privacy_exception":
          this.needPhoneNumberPrivacyException,
      "bio": this.bio,
      "share_text": this.shareText,
      "group_in_common_count": this.groupInCommonCount,
      "bot_info": this.botInfo == null ? null : this.botInfo!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'userFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
