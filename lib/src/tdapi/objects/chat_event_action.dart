part of '../tdapi.dart';

class ChatEventAction extends TdObject {
  /// Represents a chat event
  ChatEventAction();

  /// a ChatEventAction return type can be :
  /// * ChatEventMessageEdited
  /// * ChatEventMessageDeleted
  /// * ChatEventPollStopped
  /// * ChatEventMessagePinned
  /// * ChatEventMessageUnpinned
  /// * ChatEventMemberJoined
  /// * ChatEventMemberLeft
  /// * ChatEventMemberInvited
  /// * ChatEventMemberPromoted
  /// * ChatEventMemberRestricted
  /// * ChatEventTitleChanged
  /// * ChatEventPermissionsChanged
  /// * ChatEventDescriptionChanged
  /// * ChatEventUsernameChanged
  /// * ChatEventPhotoChanged
  /// * ChatEventInvitesToggled
  /// * ChatEventLinkedChatChanged
  /// * ChatEventSlowModeDelayChanged
  /// * ChatEventSignMessagesToggled
  /// * ChatEventStickerSetChanged
  /// * ChatEventLocationChanged
  /// * ChatEventIsAllHistoryAvailableToggled
  /// * ChatEventVoiceChatCreated
  /// * ChatEventVoiceChatDiscarded
  /// * ChatEventVoiceChatParticipantIsMutedToggled
  /// * ChatEventVoiceChatMuteNewParticipantsToggled
  factory ChatEventAction.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatEventMessageEdited.CONSTRUCTOR:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventMessageDeleted.CONSTRUCTOR:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventPollStopped.CONSTRUCTOR:
        return ChatEventPollStopped.fromJson(json);
      case ChatEventMessagePinned.CONSTRUCTOR:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageUnpinned.CONSTRUCTOR:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventMemberJoined.CONSTRUCTOR:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberLeft.CONSTRUCTOR:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberInvited.CONSTRUCTOR:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventMemberPromoted.CONSTRUCTOR:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventMemberRestricted.CONSTRUCTOR:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventTitleChanged.CONSTRUCTOR:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventPermissionsChanged.CONSTRUCTOR:
        return ChatEventPermissionsChanged.fromJson(json);
      case ChatEventDescriptionChanged.CONSTRUCTOR:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventUsernameChanged.CONSTRUCTOR:
        return ChatEventUsernameChanged.fromJson(json);
      case ChatEventPhotoChanged.CONSTRUCTOR:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventInvitesToggled.CONSTRUCTOR:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventLinkedChatChanged.CONSTRUCTOR:
        return ChatEventLinkedChatChanged.fromJson(json);
      case ChatEventSlowModeDelayChanged.CONSTRUCTOR:
        return ChatEventSlowModeDelayChanged.fromJson(json);
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventLocationChanged.CONSTRUCTOR:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      case ChatEventVoiceChatCreated.CONSTRUCTOR:
        return ChatEventVoiceChatCreated.fromJson(json);
      case ChatEventVoiceChatDiscarded.CONSTRUCTOR:
        return ChatEventVoiceChatDiscarded.fromJson(json);
      case ChatEventVoiceChatParticipantIsMutedToggled.CONSTRUCTOR:
        return ChatEventVoiceChatParticipantIsMutedToggled.fromJson(json);
      case ChatEventVoiceChatMuteNewParticipantsToggled.CONSTRUCTOR:
        return ChatEventVoiceChatMuteNewParticipantsToggled.fromJson(json);
      default:
        return ChatEventAction();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatEventAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageEdited extends ChatEventAction {
  /// A message was edited
  ChatEventMessageEdited({required this.oldMessage, required this.newMessage});

  /// [oldMessage] The original message before the edit
  Message oldMessage;

  /// [newMessage] The message after it was edited
  Message newMessage;

  /// Parse from a json
  factory ChatEventMessageEdited.fromJson(Map<String, dynamic> json) {
    return ChatEventMessageEdited(
      oldMessage: Message.fromJson(json['old_message'] ?? <String, dynamic>{}),
      newMessage: Message.fromJson(json['new_message'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_message": this.oldMessage.toJson(),
      "new_message": this.newMessage.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageDeleted extends ChatEventAction {
  /// A message was deleted
  ChatEventMessageDeleted({required this.message});

  /// [message] Deleted message
  Message message;

  /// Parse from a json
  factory ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) {
    return ChatEventMessageDeleted(
      message: Message.fromJson(json['message'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMessageDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPollStopped extends ChatEventAction {
  /// A poll in a message was stopped
  ChatEventPollStopped({required this.message});

  /// [message] The message with the poll
  Message message;

  /// Parse from a json
  factory ChatEventPollStopped.fromJson(Map<String, dynamic> json) {
    return ChatEventPollStopped(
      message: Message.fromJson(json['message'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventPollStopped';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessagePinned extends ChatEventAction {
  /// A message was pinned
  ChatEventMessagePinned({required this.message});

  /// [message] Pinned message
  Message message;

  /// Parse from a json
  factory ChatEventMessagePinned.fromJson(Map<String, dynamic> json) {
    return ChatEventMessagePinned(
      message: Message.fromJson(json['message'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMessagePinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageUnpinned extends ChatEventAction {
  /// A message was unpinned
  ChatEventMessageUnpinned({required this.message});

  /// [message] Unpinned message
  Message message;

  /// Parse from a json
  factory ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) {
    return ChatEventMessageUnpinned(
      message: Message.fromJson(json['message'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMessageUnpinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoined extends ChatEventAction {
  /// A new member joined the chat
  ChatEventMemberJoined();

  /// Parse from a json
  factory ChatEventMemberJoined.fromJson(Map<String, dynamic> json) {
    return ChatEventMemberJoined();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberJoined';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberLeft extends ChatEventAction {
  /// A member left the chat
  ChatEventMemberLeft();

  /// Parse from a json
  factory ChatEventMemberLeft.fromJson(Map<String, dynamic> json) {
    return ChatEventMemberLeft();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberLeft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberInvited extends ChatEventAction {
  /// A new chat member was invited
  ChatEventMemberInvited({required this.userId, required this.status});

  /// [userId] New member user identifier
  int userId;

  /// [status] New member status
  ChatMemberStatus status;

  /// Parse from a json
  factory ChatEventMemberInvited.fromJson(Map<String, dynamic> json) {
    return ChatEventMemberInvited(
      userId: json['user_id'] ?? 0,
      status: ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "status": this.status.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberInvited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberPromoted extends ChatEventAction {
  /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
  ChatEventMemberPromoted(
      {required this.userId, required this.oldStatus, required this.newStatus});

  /// [userId] Chat member user identifier
  int userId;

  /// [oldStatus] Previous status of the chat member
  ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  ChatMemberStatus newStatus;

  /// Parse from a json
  factory ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) {
    return ChatEventMemberPromoted(
      userId: json['user_id'] ?? 0,
      oldStatus:
          ChatMemberStatus.fromJson(json['old_status'] ?? <String, dynamic>{}),
      newStatus:
          ChatMemberStatus.fromJson(json['new_status'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "old_status": this.oldStatus.toJson(),
      "new_status": this.newStatus.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberPromoted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberRestricted extends ChatEventAction {
  /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
  ChatEventMemberRestricted(
      {required this.userId, required this.oldStatus, required this.newStatus});

  /// [userId] Chat member user identifier
  int userId;

  /// [oldStatus] Previous status of the chat member
  ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  ChatMemberStatus newStatus;

  /// Parse from a json
  factory ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) {
    return ChatEventMemberRestricted(
      userId: json['user_id'] ?? 0,
      oldStatus:
          ChatMemberStatus.fromJson(json['old_status'] ?? <String, dynamic>{}),
      newStatus:
          ChatMemberStatus.fromJson(json['new_status'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "old_status": this.oldStatus.toJson(),
      "new_status": this.newStatus.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventTitleChanged extends ChatEventAction {
  /// The chat title was changed
  ChatEventTitleChanged({required this.oldTitle, required this.newTitle});

  /// [oldTitle] Previous chat title
  String oldTitle;

  /// [newTitle] New chat title
  String newTitle;

  /// Parse from a json
  factory ChatEventTitleChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventTitleChanged(
      oldTitle: json['old_title'] ?? "",
      newTitle: json['new_title'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_title": this.oldTitle,
      "new_title": this.newTitle,
    };
  }

  static const CONSTRUCTOR = 'chatEventTitleChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPermissionsChanged extends ChatEventAction {
  /// The chat permissions was changed
  ChatEventPermissionsChanged(
      {required this.oldPermissions, required this.newPermissions});

  /// [oldPermissions] Previous chat permissions
  ChatPermissions oldPermissions;

  /// [newPermissions] New chat permissions
  ChatPermissions newPermissions;

  /// Parse from a json
  factory ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventPermissionsChanged(
      oldPermissions: ChatPermissions.fromJson(
          json['old_permissions'] ?? <String, dynamic>{}),
      newPermissions: ChatPermissions.fromJson(
          json['new_permissions'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_permissions": this.oldPermissions.toJson(),
      "new_permissions": this.newPermissions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventPermissionsChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventDescriptionChanged extends ChatEventAction {
  /// The chat description was changed
  ChatEventDescriptionChanged(
      {required this.oldDescription, required this.newDescription});

  /// [oldDescription] Previous chat description
  String oldDescription;

  /// [newDescription] New chat description
  String newDescription;

  /// Parse from a json
  factory ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventDescriptionChanged(
      oldDescription: json['old_description'] ?? "",
      newDescription: json['new_description'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_description": this.oldDescription,
      "new_description": this.newDescription,
    };
  }

  static const CONSTRUCTOR = 'chatEventDescriptionChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventUsernameChanged extends ChatEventAction {
  /// The chat username was changed
  ChatEventUsernameChanged(
      {required this.oldUsername, required this.newUsername});

  /// [oldUsername] Previous chat username
  String oldUsername;

  /// [newUsername] New chat username
  String newUsername;

  /// Parse from a json
  factory ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventUsernameChanged(
      oldUsername: json['old_username'] ?? "",
      newUsername: json['new_username'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_username": this.oldUsername,
      "new_username": this.newUsername,
    };
  }

  static const CONSTRUCTOR = 'chatEventUsernameChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPhotoChanged extends ChatEventAction {
  /// The chat photo was changed
  ChatEventPhotoChanged({this.oldPhoto, this.newPhoto});

  /// [oldPhoto] Previous chat photo value; may be null
  ChatPhoto? oldPhoto;

  /// [newPhoto] New chat photo value; may be null
  ChatPhoto? newPhoto;

  /// Parse from a json
  factory ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventPhotoChanged(
      oldPhoto: ChatPhoto.fromJson(json['old_photo'] ?? <String, dynamic>{}),
      newPhoto: ChatPhoto.fromJson(json['new_photo'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_photo": this.oldPhoto == null ? null : this.oldPhoto!.toJson(),
      "new_photo": this.newPhoto == null ? null : this.newPhoto!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventPhotoChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInvitesToggled extends ChatEventAction {
  /// The can_invite_users permission of a supergroup chat was toggled
  ChatEventInvitesToggled({required this.canInviteUsers});

  /// [canInviteUsers] New value of can_invite_users permission
  bool canInviteUsers;

  /// Parse from a json
  factory ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) {
    return ChatEventInvitesToggled(
      canInviteUsers: json['can_invite_users'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_invite_users": this.canInviteUsers,
    };
  }

  static const CONSTRUCTOR = 'chatEventInvitesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLinkedChatChanged extends ChatEventAction {
  /// The linked chat of a supergroup was changed
  ChatEventLinkedChatChanged(
      {required this.oldLinkedChatId, required this.newLinkedChatId});

  /// [oldLinkedChatId] Previous supergroup linked chat identifier
  int oldLinkedChatId;

  /// [newLinkedChatId] New supergroup linked chat identifier
  int newLinkedChatId;

  /// Parse from a json
  factory ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventLinkedChatChanged(
      oldLinkedChatId: json['old_linked_chat_id'] ?? 0,
      newLinkedChatId: json['new_linked_chat_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_linked_chat_id": this.oldLinkedChatId,
      "new_linked_chat_id": this.newLinkedChatId,
    };
  }

  static const CONSTRUCTOR = 'chatEventLinkedChatChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSlowModeDelayChanged extends ChatEventAction {
  /// The slow_mode_delay setting of a supergroup was changed
  ChatEventSlowModeDelayChanged(
      {required this.oldSlowModeDelay, required this.newSlowModeDelay});

  /// [oldSlowModeDelay] Previous value of slow_mode_delay
  int oldSlowModeDelay;

  /// [newSlowModeDelay] New value of slow_mode_delay
  int newSlowModeDelay;

  /// Parse from a json
  factory ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventSlowModeDelayChanged(
      oldSlowModeDelay: json['old_slow_mode_delay'] ?? 0,
      newSlowModeDelay: json['new_slow_mode_delay'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_slow_mode_delay": this.oldSlowModeDelay,
      "new_slow_mode_delay": this.newSlowModeDelay,
    };
  }

  static const CONSTRUCTOR = 'chatEventSlowModeDelayChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSignMessagesToggled extends ChatEventAction {
  /// The sign_messages setting of a channel was toggled
  ChatEventSignMessagesToggled({required this.signMessages});

  /// [signMessages] New value of sign_messages
  bool signMessages;

  /// Parse from a json
  factory ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) {
    return ChatEventSignMessagesToggled(
      signMessages: json['sign_messages'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sign_messages": this.signMessages,
    };
  }

  static const CONSTRUCTOR = 'chatEventSignMessagesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventStickerSetChanged extends ChatEventAction {
  /// The supergroup sticker set was changed
  ChatEventStickerSetChanged(
      {required this.oldStickerSetId, required this.newStickerSetId});

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  int newStickerSetId;

  /// Parse from a json
  factory ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventStickerSetChanged(
      oldStickerSetId: int.tryParse(json['old_sticker_set_id'] ?? "") ?? 0,
      newStickerSetId: int.tryParse(json['new_sticker_set_id'] ?? "") ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_sticker_set_id": this.oldStickerSetId,
      "new_sticker_set_id": this.newStickerSetId,
    };
  }

  static const CONSTRUCTOR = 'chatEventStickerSetChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLocationChanged extends ChatEventAction {
  /// The supergroup location was changed
  ChatEventLocationChanged({this.oldLocation, this.newLocation});

  /// [oldLocation] Previous location; may be null
  ChatLocation? oldLocation;

  /// [newLocation] New location; may be null
  ChatLocation? newLocation;

  /// Parse from a json
  factory ChatEventLocationChanged.fromJson(Map<String, dynamic> json) {
    return ChatEventLocationChanged(
      oldLocation:
          ChatLocation.fromJson(json['old_location'] ?? <String, dynamic>{}),
      newLocation:
          ChatLocation.fromJson(json['new_location'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_location":
          this.oldLocation == null ? null : this.oldLocation!.toJson(),
      "new_location":
          this.newLocation == null ? null : this.newLocation!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventLocationChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  /// The is_all_history_available setting of a supergroup was toggled
  ChatEventIsAllHistoryAvailableToggled({required this.isAllHistoryAvailable});

  /// [isAllHistoryAvailable] New value of is_all_history_available
  bool isAllHistoryAvailable;

  /// Parse from a json
  factory ChatEventIsAllHistoryAvailableToggled.fromJson(
      Map<String, dynamic> json) {
    return ChatEventIsAllHistoryAvailableToggled(
      isAllHistoryAvailable: json['is_all_history_available'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_all_history_available": this.isAllHistoryAvailable,
    };
  }

  static const CONSTRUCTOR = 'chatEventIsAllHistoryAvailableToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVoiceChatCreated extends ChatEventAction {
  /// A voice chat was created
  ChatEventVoiceChatCreated({required this.groupCallId});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  int groupCallId;

  /// Parse from a json
  factory ChatEventVoiceChatCreated.fromJson(Map<String, dynamic> json) {
    return ChatEventVoiceChatCreated(
      groupCallId: json['group_call_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
    };
  }

  static const CONSTRUCTOR = 'chatEventVoiceChatCreated';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVoiceChatDiscarded extends ChatEventAction {
  /// A voice chat was discarded
  ChatEventVoiceChatDiscarded({required this.groupCallId});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  int groupCallId;

  /// Parse from a json
  factory ChatEventVoiceChatDiscarded.fromJson(Map<String, dynamic> json) {
    return ChatEventVoiceChatDiscarded(
      groupCallId: json['group_call_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
    };
  }

  static const CONSTRUCTOR = 'chatEventVoiceChatDiscarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVoiceChatParticipantIsMutedToggled extends ChatEventAction {
  /// A voice chat participant was muted or unmuted
  ChatEventVoiceChatParticipantIsMutedToggled(
      {required this.userId, required this.isMuted});

  /// [userId] Identifier of the affected user
  int userId;

  /// [isMuted] New value of is_muted
  bool isMuted;

  /// Parse from a json
  factory ChatEventVoiceChatParticipantIsMutedToggled.fromJson(
      Map<String, dynamic> json) {
    return ChatEventVoiceChatParticipantIsMutedToggled(
      userId: json['user_id'] ?? 0,
      isMuted: json['is_muted'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "is_muted": this.isMuted,
    };
  }

  static const CONSTRUCTOR = 'chatEventVoiceChatParticipantIsMutedToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVoiceChatMuteNewParticipantsToggled extends ChatEventAction {
  /// The mute_new_participants setting of a voice chat was toggled
  ChatEventVoiceChatMuteNewParticipantsToggled(
      {required this.muteNewParticipants});

  /// [muteNewParticipants] New value of the mute_new_participants setting
  bool muteNewParticipants;

  /// Parse from a json
  factory ChatEventVoiceChatMuteNewParticipantsToggled.fromJson(
      Map<String, dynamic> json) {
    return ChatEventVoiceChatMuteNewParticipantsToggled(
      muteNewParticipants: json['mute_new_participants'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "mute_new_participants": this.muteNewParticipants,
    };
  }

  static const CONSTRUCTOR = 'chatEventVoiceChatMuteNewParticipantsToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}
