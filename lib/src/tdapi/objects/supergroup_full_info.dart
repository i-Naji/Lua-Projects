part of '../tdapi.dart';

class SupergroupFullInfo extends TdObject {
  /// Contains full information about a supergroup or channel
  SupergroupFullInfo(
      {this.photo,
      required this.description,
      required this.memberCount,
      required this.administratorCount,
      required this.restrictedCount,
      required this.bannedCount,
      required this.linkedChatId,
      required this.slowModeDelay,
      required this.slowModeDelayExpiresIn,
      required this.canGetMembers,
      required this.canSetUsername,
      required this.canSetStickerSet,
      required this.canSetLocation,
      required this.canGetStatistics,
      required this.isAllHistoryAvailable,
      required this.stickerSetId,
      this.location,
      required this.inviteLink,
      required this.upgradedFromBasicGroupId,
      required this.upgradedFromMaxMessageId,
      this.extra});

  /// [photo] Chat photo; may be null
  ChatPhoto? photo;

  /// [description] Supergroup or channel description
  String description;

  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown
  int memberCount;

  /// [administratorCount] Number of privileged users in the supergroup or channel; 0 if unknown
  int administratorCount;

  /// [restrictedCount] Number of restricted users in the supergroup; 0 if unknown
  int restrictedCount;

  /// [bannedCount] Number of users banned from chat; 0 if unknown
  int bannedCount;

  /// [linkedChatId] Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown
  int linkedChatId;

  /// [slowModeDelay] Delay between consecutive sent messages for non-administrator supergroup members, in seconds
  int slowModeDelay;

  /// [slowModeDelayExpiresIn] Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero
  double slowModeDelayExpiresIn;

  /// [canGetMembers] True, if members of the chat can be retrieved
  bool canGetMembers;

  /// [canSetUsername] True, if the chat username can be changed
  bool canSetUsername;

  /// [canSetStickerSet] True, if the supergroup sticker set can be changed
  bool canSetStickerSet;

  /// [canSetLocation] True, if the supergroup location can be changed
  bool canSetLocation;

  /// [canGetStatistics] True, if the supergroup or channel statistics are available
  bool canGetStatistics;

  /// [isAllHistoryAvailable] True, if new chat members will have access to old messages. In public or discussion groups and both public and private channels, old messages are always available, so this option affects only private supergroups without a linked chat. The value of this field is only available for chat administrators
  bool isAllHistoryAvailable;

  /// [stickerSetId] Identifier of the supergroup sticker set; 0 if none
  int stickerSetId;

  /// [location] Location to which the supergroup is connected; may be null
  ChatLocation? location;

  /// [inviteLink] Invite link for this chat
  String inviteLink;

  /// [upgradedFromBasicGroupId] Identifier of the basic group from which supergroup was upgraded; 0 if none
  int upgradedFromBasicGroupId;

  /// [upgradedFromMaxMessageId] Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
  int upgradedFromMaxMessageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory SupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    return SupergroupFullInfo(
      photo: ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{}),
      description: json['description'] ?? "",
      memberCount: json['member_count'] ?? 0,
      administratorCount: json['administrator_count'] ?? 0,
      restrictedCount: json['restricted_count'] ?? 0,
      bannedCount: json['banned_count'] ?? 0,
      linkedChatId: json['linked_chat_id'] ?? 0,
      slowModeDelay: json['slow_mode_delay'] ?? 0,
      slowModeDelayExpiresIn: json['slow_mode_delay_expires_in'] ?? 0,
      canGetMembers: json['can_get_members'] ?? false,
      canSetUsername: json['can_set_username'] ?? false,
      canSetStickerSet: json['can_set_sticker_set'] ?? false,
      canSetLocation: json['can_set_location'] ?? false,
      canGetStatistics: json['can_get_statistics'] ?? false,
      isAllHistoryAvailable: json['is_all_history_available'] ?? false,
      stickerSetId: int.tryParse(json['sticker_set_id'] ?? "") ?? 0,
      location: ChatLocation.fromJson(json['location'] ?? <String, dynamic>{}),
      inviteLink: json['invite_link'] ?? "",
      upgradedFromBasicGroupId: json['upgraded_from_basic_group_id'] ?? 0,
      upgradedFromMaxMessageId: json['upgraded_from_max_message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "description": this.description,
      "member_count": this.memberCount,
      "administrator_count": this.administratorCount,
      "restricted_count": this.restrictedCount,
      "banned_count": this.bannedCount,
      "linked_chat_id": this.linkedChatId,
      "slow_mode_delay": this.slowModeDelay,
      "slow_mode_delay_expires_in": this.slowModeDelayExpiresIn,
      "can_get_members": this.canGetMembers,
      "can_set_username": this.canSetUsername,
      "can_set_sticker_set": this.canSetStickerSet,
      "can_set_location": this.canSetLocation,
      "can_get_statistics": this.canGetStatistics,
      "is_all_history_available": this.isAllHistoryAvailable,
      "sticker_set_id": this.stickerSetId,
      "location": this.location == null ? null : this.location!.toJson(),
      "invite_link": this.inviteLink,
      "upgraded_from_basic_group_id": this.upgradedFromBasicGroupId,
      "upgraded_from_max_message_id": this.upgradedFromMaxMessageId,
    };
  }

  static const CONSTRUCTOR = 'supergroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
