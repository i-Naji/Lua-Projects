part of '../tdapi.dart';

class ChatPermissions extends TdObject {
  /// Describes actions that a user is allowed to take in a chat
  ChatPermissions(
      {required this.canSendMessages,
      required this.canSendMediaMessages,
      required this.canSendPolls,
      required this.canSendOtherMessages,
      required this.canAddWebPagePreviews,
      required this.canChangeInfo,
      required this.canInviteUsers,
      required this.canPinMessages});

  /// [canSendMessages] True, if the user can send text messages, contacts, locations, and venues
  bool canSendMessages;

  /// [canSendMediaMessages] True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions
  bool canSendMediaMessages;

  /// [canSendPolls] True, if the user can send polls. Implies can_send_messages permissions
  bool canSendPolls;

  /// [canSendOtherMessages] True, if the user can send animations, games, stickers, and dice and use inline bots. Implies can_send_messages permissions
  bool canSendOtherMessages;

  /// [canAddWebPagePreviews] True, if the user may add a web page preview to their messages. Implies can_send_messages permissions
  bool canAddWebPagePreviews;

  /// [canChangeInfo] True, if the user can change the chat title, photo, and other settings
  bool canChangeInfo;

  /// [canInviteUsers] True, if the user can invite new users to the chat
  bool canInviteUsers;

  /// [canPinMessages] True, if the user can pin messages
  bool canPinMessages;

  /// Parse from a json
  factory ChatPermissions.fromJson(Map<String, dynamic> json) {
    return ChatPermissions(
      canSendMessages: json['can_send_messages'] ?? false,
      canSendMediaMessages: json['can_send_media_messages'] ?? false,
      canSendPolls: json['can_send_polls'] ?? false,
      canSendOtherMessages: json['can_send_other_messages'] ?? false,
      canAddWebPagePreviews: json['can_add_web_page_previews'] ?? false,
      canChangeInfo: json['can_change_info'] ?? false,
      canInviteUsers: json['can_invite_users'] ?? false,
      canPinMessages: json['can_pin_messages'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_send_messages": this.canSendMessages,
      "can_send_media_messages": this.canSendMediaMessages,
      "can_send_polls": this.canSendPolls,
      "can_send_other_messages": this.canSendOtherMessages,
      "can_add_web_page_previews": this.canAddWebPagePreviews,
      "can_change_info": this.canChangeInfo,
      "can_invite_users": this.canInviteUsers,
      "can_pin_messages": this.canPinMessages,
    };
  }

  static const CONSTRUCTOR = 'chatPermissions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
