part of '../tdapi.dart';

class ChatMemberStatus extends TdObject {
  /// Provides information about the status of a member in a chat
  ChatMemberStatus();

  /// a ChatMemberStatus return type can be :
  /// * ChatMemberStatusCreator
  /// * ChatMemberStatusAdministrator
  /// * ChatMemberStatusMember
  /// * ChatMemberStatusRestricted
  /// * ChatMemberStatusLeft
  /// * ChatMemberStatusBanned
  factory ChatMemberStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatMemberStatusCreator.CONSTRUCTOR:
        return ChatMemberStatusCreator.fromJson(json);
      case ChatMemberStatusAdministrator.CONSTRUCTOR:
        return ChatMemberStatusAdministrator.fromJson(json);
      case ChatMemberStatusMember.CONSTRUCTOR:
        return ChatMemberStatusMember.fromJson(json);
      case ChatMemberStatusRestricted.CONSTRUCTOR:
        return ChatMemberStatusRestricted.fromJson(json);
      case ChatMemberStatusLeft.CONSTRUCTOR:
        return ChatMemberStatusLeft.fromJson(json);
      case ChatMemberStatusBanned.CONSTRUCTOR:
        return ChatMemberStatusBanned.fromJson(json);
      default:
        return ChatMemberStatus();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusCreator extends ChatMemberStatus {
  /// The user is the owner of a chat and has all the administrator privileges
  ChatMemberStatusCreator(
      {required this.customTitle,
      required this.isAnonymous,
      required this.isMember});

  /// [customTitle] A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only
  String customTitle;

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  bool isMember;

  /// Parse from a json
  factory ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusCreator(
      customTitle: json['custom_title'] ?? "",
      isAnonymous: json['is_anonymous'] ?? false,
      isMember: json['is_member'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": this.customTitle,
      "is_anonymous": this.isAnonymous,
      "is_member": this.isMember,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusCreator';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusAdministrator extends ChatMemberStatus {
  /// The user is a member of a chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage voice chats. In supergroups and channels, there are more detailed options for administrator privileges
  ChatMemberStatusAdministrator(
      {required this.customTitle,
      required this.canBeEdited,
      required this.canChangeInfo,
      required this.canPostMessages,
      required this.canEditMessages,
      required this.canDeleteMessages,
      required this.canInviteUsers,
      required this.canRestrictMembers,
      required this.canPinMessages,
      required this.canPromoteMembers,
      required this.canManageVoiceChats,
      required this.isAnonymous});

  /// [customTitle] A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only
  String customTitle;

  /// [canBeEdited] True, if the current user can edit the administrator privileges for the called user
  bool canBeEdited;

  /// [canChangeInfo] True, if the administrator can change the chat title, photo, and other settings
  bool canChangeInfo;

  /// [canPostMessages] True, if the administrator can create channel posts; applicable to channels only
  bool canPostMessages;

  /// [canEditMessages] True, if the administrator can edit messages of other users and pin messages; applicable to channels only
  bool canEditMessages;

  /// [canDeleteMessages] True, if the administrator can delete messages of other users
  bool canDeleteMessages;

  /// [canInviteUsers] True, if the administrator can invite new users to the chat
  bool canInviteUsers;

  /// [canRestrictMembers] True, if the administrator can restrict, ban, or unban chat members
  bool canRestrictMembers;

  /// [canPinMessages] True, if the administrator can pin messages; applicable to groups only
  bool canPinMessages;

  /// [canPromoteMembers] True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
  bool canPromoteMembers;

  /// [canManageVoiceChats] True, if the administrator can manage voice chats; applicable to groups only
  bool canManageVoiceChats;

  /// [isAnonymous] True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  bool isAnonymous;

  /// Parse from a json
  factory ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusAdministrator(
      customTitle: json['custom_title'] ?? "",
      canBeEdited: json['can_be_edited'] ?? false,
      canChangeInfo: json['can_change_info'] ?? false,
      canPostMessages: json['can_post_messages'] ?? false,
      canEditMessages: json['can_edit_messages'] ?? false,
      canDeleteMessages: json['can_delete_messages'] ?? false,
      canInviteUsers: json['can_invite_users'] ?? false,
      canRestrictMembers: json['can_restrict_members'] ?? false,
      canPinMessages: json['can_pin_messages'] ?? false,
      canPromoteMembers: json['can_promote_members'] ?? false,
      canManageVoiceChats: json['can_manage_voice_chats'] ?? false,
      isAnonymous: json['is_anonymous'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": this.customTitle,
      "can_be_edited": this.canBeEdited,
      "can_change_info": this.canChangeInfo,
      "can_post_messages": this.canPostMessages,
      "can_edit_messages": this.canEditMessages,
      "can_delete_messages": this.canDeleteMessages,
      "can_invite_users": this.canInviteUsers,
      "can_restrict_members": this.canRestrictMembers,
      "can_pin_messages": this.canPinMessages,
      "can_promote_members": this.canPromoteMembers,
      "can_manage_voice_chats": this.canManageVoiceChats,
      "is_anonymous": this.isAnonymous,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusAdministrator';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusMember extends ChatMemberStatus {
  /// The user is a member of a chat, without any additional privileges or restrictions
  ChatMemberStatusMember();

  /// Parse from a json
  factory ChatMemberStatusMember.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusMember();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusRestricted extends ChatMemberStatus {
  /// The user is under certain restrictions in the chat. Not supported in basic groups and channels
  ChatMemberStatusRestricted(
      {required this.isMember,
      required this.restrictedUntilDate,
      required this.permissions});

  /// [isMember] True, if the user is a member of the chat
  bool isMember;

  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
  int restrictedUntilDate;

  /// [permissions] User permissions in the chat
  ChatPermissions permissions;

  /// Parse from a json
  factory ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusRestricted(
      isMember: json['is_member'] ?? false,
      restrictedUntilDate: json['restricted_until_date'] ?? 0,
      permissions:
          ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_member": this.isMember,
      "restricted_until_date": this.restrictedUntilDate,
      "permissions": this.permissions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusLeft extends ChatMemberStatus {
  /// The user is not a chat member
  ChatMemberStatusLeft();

  /// Parse from a json
  factory ChatMemberStatusLeft.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusLeft();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusLeft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusBanned extends ChatMemberStatus {
  /// The user was banned (and hence is not a member of the chat). Implies the user can't return to the chat or view messages
  ChatMemberStatusBanned({required this.bannedUntilDate});

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever
  int bannedUntilDate;

  /// Parse from a json
  factory ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusBanned(
      bannedUntilDate: json['banned_until_date'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "banned_until_date": this.bannedUntilDate,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusBanned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
