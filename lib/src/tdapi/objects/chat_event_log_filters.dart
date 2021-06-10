part of '../tdapi.dart';

class ChatEventLogFilters extends TdObject {
  /// Represents a set of filters used to obtain a chat event log
  ChatEventLogFilters(
      {required this.messageEdits,
      required this.messageDeletions,
      required this.messagePins,
      required this.memberJoins,
      required this.memberLeaves,
      required this.memberInvites,
      required this.memberPromotions,
      required this.memberRestrictions,
      required this.infoChanges,
      required this.settingChanges,
      required this.voiceChatChanges});

  /// [messageEdits] True, if message edits should be returned
  bool messageEdits;

  /// [messageDeletions] True, if message deletions should be returned
  bool messageDeletions;

  /// [messagePins] True, if pin/unpin events should be returned
  bool messagePins;

  /// [memberJoins] True, if members joining events should be returned
  bool memberJoins;

  /// [memberLeaves] True, if members leaving events should be returned
  bool memberLeaves;

  /// [memberInvites] True, if invited member events should be returned
  bool memberInvites;

  /// [memberPromotions] True, if member promotion/demotion events should be returned
  bool memberPromotions;

  /// [memberRestrictions] True, if member restricted/unrestricted/banned/unbanned events should be returned
  bool memberRestrictions;

  /// [infoChanges] True, if changes in chat information should be returned
  bool infoChanges;

  /// [settingChanges] True, if changes in chat settings should be returned
  bool settingChanges;

  /// [voiceChatChanges] True, if voice chat actions should be returned
  bool voiceChatChanges;

  /// Parse from a json
  factory ChatEventLogFilters.fromJson(Map<String, dynamic> json) {
    return ChatEventLogFilters(
      messageEdits: json['message_edits'] ?? false,
      messageDeletions: json['message_deletions'] ?? false,
      messagePins: json['message_pins'] ?? false,
      memberJoins: json['member_joins'] ?? false,
      memberLeaves: json['member_leaves'] ?? false,
      memberInvites: json['member_invites'] ?? false,
      memberPromotions: json['member_promotions'] ?? false,
      memberRestrictions: json['member_restrictions'] ?? false,
      infoChanges: json['info_changes'] ?? false,
      settingChanges: json['setting_changes'] ?? false,
      voiceChatChanges: json['voice_chat_changes'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_edits": this.messageEdits,
      "message_deletions": this.messageDeletions,
      "message_pins": this.messagePins,
      "member_joins": this.memberJoins,
      "member_leaves": this.memberLeaves,
      "member_invites": this.memberInvites,
      "member_promotions": this.memberPromotions,
      "member_restrictions": this.memberRestrictions,
      "info_changes": this.infoChanges,
      "setting_changes": this.settingChanges,
      "voice_chat_changes": this.voiceChatChanges,
    };
  }

  static const CONSTRUCTOR = 'chatEventLogFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
