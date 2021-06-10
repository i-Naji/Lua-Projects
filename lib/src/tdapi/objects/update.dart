part of '../tdapi.dart';

class Update extends TdObject {
  /// Contains notifications about data changes
  Update();

  /// a Update return type can be :
  /// * UpdateAuthorizationState
  /// * UpdateNewMessage
  /// * UpdateMessageSendAcknowledged
  /// * UpdateMessageSendSucceeded
  /// * UpdateMessageSendFailed
  /// * UpdateMessageContent
  /// * UpdateMessageEdited
  /// * UpdateMessageIsPinned
  /// * UpdateMessageInteractionInfo
  /// * UpdateMessageContentOpened
  /// * UpdateMessageMentionRead
  /// * UpdateMessageLiveLocationViewed
  /// * UpdateNewChat
  /// * UpdateChatTitle
  /// * UpdateChatPhoto
  /// * UpdateChatPermissions
  /// * UpdateChatLastMessage
  /// * UpdateChatPosition
  /// * UpdateChatIsMarkedAsUnread
  /// * UpdateChatIsBlocked
  /// * UpdateChatHasScheduledMessages
  /// * UpdateChatVoiceChat
  /// * UpdateChatDefaultDisableNotification
  /// * UpdateChatReadInbox
  /// * UpdateChatReadOutbox
  /// * UpdateChatUnreadMentionCount
  /// * UpdateChatNotificationSettings
  /// * UpdateScopeNotificationSettings
  /// * UpdateChatActionBar
  /// * UpdateChatReplyMarkup
  /// * UpdateChatDraftMessage
  /// * UpdateChatFilters
  /// * UpdateChatOnlineMemberCount
  /// * UpdateNotification
  /// * UpdateNotificationGroup
  /// * UpdateActiveNotifications
  /// * UpdateHavePendingNotifications
  /// * UpdateDeleteMessages
  /// * UpdateUserChatAction
  /// * UpdateUserStatus
  /// * UpdateUser
  /// * UpdateBasicGroup
  /// * UpdateSupergroup
  /// * UpdateSecretChat
  /// * UpdateUserFullInfo
  /// * UpdateBasicGroupFullInfo
  /// * UpdateSupergroupFullInfo
  /// * UpdateServiceNotification
  /// * UpdateFile
  /// * UpdateFileGenerationStart
  /// * UpdateFileGenerationStop
  /// * UpdateCall
  /// * UpdateGroupCall
  /// * UpdateGroupCallParticipant
  /// * UpdateNewCallSignalingData
  /// * UpdateUserPrivacySettingRules
  /// * UpdateUnreadMessageCount
  /// * UpdateUnreadChatCount
  /// * UpdateOption
  /// * UpdateStickerSet
  /// * UpdateInstalledStickerSets
  /// * UpdateTrendingStickerSets
  /// * UpdateRecentStickers
  /// * UpdateFavoriteStickers
  /// * UpdateSavedAnimations
  /// * UpdateSelectedBackground
  /// * UpdateLanguagePackStrings
  /// * UpdateConnectionState
  /// * UpdateTermsOfService
  /// * UpdateUsersNearby
  /// * UpdateDiceEmojis
  /// * UpdateAnimationSearchParameters
  /// * UpdateSuggestedActions
  /// * UpdateNewInlineQuery
  /// * UpdateNewChosenInlineResult
  /// * UpdateNewCallbackQuery
  /// * UpdateNewInlineCallbackQuery
  /// * UpdateNewShippingQuery
  /// * UpdateNewPreCheckoutQuery
  /// * UpdateNewCustomEvent
  /// * UpdateNewCustomQuery
  /// * UpdatePoll
  /// * UpdatePollAnswer
  factory Update.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UpdateAuthorizationState.CONSTRUCTOR:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateNewMessage.CONSTRUCTOR:
        return UpdateNewMessage.fromJson(json);
      case UpdateMessageSendAcknowledged.CONSTRUCTOR:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateMessageSendSucceeded.CONSTRUCTOR:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateMessageSendFailed.CONSTRUCTOR:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateMessageContent.CONSTRUCTOR:
        return UpdateMessageContent.fromJson(json);
      case UpdateMessageEdited.CONSTRUCTOR:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageIsPinned.CONSTRUCTOR:
        return UpdateMessageIsPinned.fromJson(json);
      case UpdateMessageInteractionInfo.CONSTRUCTOR:
        return UpdateMessageInteractionInfo.fromJson(json);
      case UpdateMessageContentOpened.CONSTRUCTOR:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateMessageMentionRead.CONSTRUCTOR:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateMessageLiveLocationViewed.CONSTRUCTOR:
        return UpdateMessageLiveLocationViewed.fromJson(json);
      case UpdateNewChat.CONSTRUCTOR:
        return UpdateNewChat.fromJson(json);
      case UpdateChatTitle.CONSTRUCTOR:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatPhoto.CONSTRUCTOR:
        return UpdateChatPhoto.fromJson(json);
      case UpdateChatPermissions.CONSTRUCTOR:
        return UpdateChatPermissions.fromJson(json);
      case UpdateChatLastMessage.CONSTRUCTOR:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateChatPosition.CONSTRUCTOR:
        return UpdateChatPosition.fromJson(json);
      case UpdateChatIsMarkedAsUnread.CONSTRUCTOR:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatIsBlocked.CONSTRUCTOR:
        return UpdateChatIsBlocked.fromJson(json);
      case UpdateChatHasScheduledMessages.CONSTRUCTOR:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatVoiceChat.CONSTRUCTOR:
        return UpdateChatVoiceChat.fromJson(json);
      case UpdateChatDefaultDisableNotification.CONSTRUCTOR:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatReadInbox.CONSTRUCTOR:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.CONSTRUCTOR:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatUnreadMentionCount.CONSTRUCTOR:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatNotificationSettings.CONSTRUCTOR:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateScopeNotificationSettings.CONSTRUCTOR:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateChatActionBar.CONSTRUCTOR:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatReplyMarkup.CONSTRUCTOR:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatDraftMessage.CONSTRUCTOR:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatFilters.CONSTRUCTOR:
        return UpdateChatFilters.fromJson(json);
      case UpdateChatOnlineMemberCount.CONSTRUCTOR:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateNotification.CONSTRUCTOR:
        return UpdateNotification.fromJson(json);
      case UpdateNotificationGroup.CONSTRUCTOR:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateActiveNotifications.CONSTRUCTOR:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateHavePendingNotifications.CONSTRUCTOR:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateDeleteMessages.CONSTRUCTOR:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateUserChatAction.CONSTRUCTOR:
        return UpdateUserChatAction.fromJson(json);
      case UpdateUserStatus.CONSTRUCTOR:
        return UpdateUserStatus.fromJson(json);
      case UpdateUser.CONSTRUCTOR:
        return UpdateUser.fromJson(json);
      case UpdateBasicGroup.CONSTRUCTOR:
        return UpdateBasicGroup.fromJson(json);
      case UpdateSupergroup.CONSTRUCTOR:
        return UpdateSupergroup.fromJson(json);
      case UpdateSecretChat.CONSTRUCTOR:
        return UpdateSecretChat.fromJson(json);
      case UpdateUserFullInfo.CONSTRUCTOR:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateBasicGroupFullInfo.CONSTRUCTOR:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateSupergroupFullInfo.CONSTRUCTOR:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateServiceNotification.CONSTRUCTOR:
        return UpdateServiceNotification.fromJson(json);
      case UpdateFile.CONSTRUCTOR:
        return UpdateFile.fromJson(json);
      case UpdateFileGenerationStart.CONSTRUCTOR:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateFileGenerationStop.CONSTRUCTOR:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateCall.CONSTRUCTOR:
        return UpdateCall.fromJson(json);
      case UpdateGroupCall.CONSTRUCTOR:
        return UpdateGroupCall.fromJson(json);
      case UpdateGroupCallParticipant.CONSTRUCTOR:
        return UpdateGroupCallParticipant.fromJson(json);
      case UpdateNewCallSignalingData.CONSTRUCTOR:
        return UpdateNewCallSignalingData.fromJson(json);
      case UpdateUserPrivacySettingRules.CONSTRUCTOR:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateUnreadMessageCount.CONSTRUCTOR:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateUnreadChatCount.CONSTRUCTOR:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateOption.CONSTRUCTOR:
        return UpdateOption.fromJson(json);
      case UpdateStickerSet.CONSTRUCTOR:
        return UpdateStickerSet.fromJson(json);
      case UpdateInstalledStickerSets.CONSTRUCTOR:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateTrendingStickerSets.CONSTRUCTOR:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateRecentStickers.CONSTRUCTOR:
        return UpdateRecentStickers.fromJson(json);
      case UpdateFavoriteStickers.CONSTRUCTOR:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateSavedAnimations.CONSTRUCTOR:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateSelectedBackground.CONSTRUCTOR:
        return UpdateSelectedBackground.fromJson(json);
      case UpdateLanguagePackStrings.CONSTRUCTOR:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateConnectionState.CONSTRUCTOR:
        return UpdateConnectionState.fromJson(json);
      case UpdateTermsOfService.CONSTRUCTOR:
        return UpdateTermsOfService.fromJson(json);
      case UpdateUsersNearby.CONSTRUCTOR:
        return UpdateUsersNearby.fromJson(json);
      case UpdateDiceEmojis.CONSTRUCTOR:
        return UpdateDiceEmojis.fromJson(json);
      case UpdateAnimationSearchParameters.CONSTRUCTOR:
        return UpdateAnimationSearchParameters.fromJson(json);
      case UpdateSuggestedActions.CONSTRUCTOR:
        return UpdateSuggestedActions.fromJson(json);
      case UpdateNewInlineQuery.CONSTRUCTOR:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateNewChosenInlineResult.CONSTRUCTOR:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewCallbackQuery.CONSTRUCTOR:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateNewInlineCallbackQuery.CONSTRUCTOR:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateNewShippingQuery.CONSTRUCTOR:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdateNewPreCheckoutQuery.CONSTRUCTOR:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateNewCustomEvent.CONSTRUCTOR:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateNewCustomQuery.CONSTRUCTOR:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdatePoll.CONSTRUCTOR:
        return UpdatePoll.fromJson(json);
      case UpdatePollAnswer.CONSTRUCTOR:
        return UpdatePollAnswer.fromJson(json);
      default:
        return Update();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'update';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAuthorizationState extends Update {
  /// The user authorization state has changed
  UpdateAuthorizationState({required this.authorizationState, this.extra});

  /// [authorizationState] New authorization state
  AuthorizationState authorizationState;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateAuthorizationState.fromJson(Map<String, dynamic> json) {
    return UpdateAuthorizationState(
      authorizationState: AuthorizationState.fromJson(
          json['authorization_state'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "authorization_state": this.authorizationState.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateAuthorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewMessage extends Update {
  /// A new message was received; can also be an outgoing message
  UpdateNewMessage({required this.message, this.extra});

  /// [message] The new message
  Message message;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewMessage.fromJson(Map<String, dynamic> json) {
    return UpdateNewMessage(
      message: Message.fromJson(json['message'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendAcknowledged extends Update {
  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
  UpdateMessageSendAcknowledged(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] The chat identifier of the sent message
  int chatId;

  /// [messageId] A temporary message identifier
  int messageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) {
    return UpdateMessageSendAcknowledged(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageSendAcknowledged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendSucceeded extends Update {
  /// A message has been successfully sent
  UpdateMessageSendSucceeded(
      {required this.message, required this.oldMessageId, this.extra});

  /// [message] Information about the sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change
  Message message;

  /// [oldMessageId] The previous temporary message identifier
  int oldMessageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) {
    return UpdateMessageSendSucceeded(
      message: Message.fromJson(json['message'] ?? <String, dynamic>{}),
      oldMessageId: json['old_message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
      "old_message_id": this.oldMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageSendSucceeded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendFailed extends Update {
  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
  UpdateMessageSendFailed(
      {required this.message,
      required this.oldMessageId,
      required this.errorCode,
      required this.errorMessage,
      this.extra});

  /// [message] Contains information about the message which failed to send
  Message message;

  /// [oldMessageId] The previous temporary message identifier
  int oldMessageId;

  /// [errorCode] An error code
  int errorCode;

  /// [errorMessage] Error message
  String errorMessage;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) {
    return UpdateMessageSendFailed(
      message: Message.fromJson(json['message'] ?? <String, dynamic>{}),
      oldMessageId: json['old_message_id'] ?? 0,
      errorCode: json['error_code'] ?? 0,
      errorMessage: json['error_message'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
      "old_message_id": this.oldMessageId,
      "error_code": this.errorCode,
      "error_message": this.errorMessage,
    };
  }

  static const CONSTRUCTOR = 'updateMessageSendFailed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContent extends Update {
  /// The message content has changed
  UpdateMessageContent(
      {required this.chatId,
      required this.messageId,
      required this.newContent,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [newContent] New message content
  MessageContent newContent;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageContent.fromJson(Map<String, dynamic> json) {
    return UpdateMessageContent(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      newContent:
          MessageContent.fromJson(json['new_content'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "new_content": this.newContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageEdited extends Update {
  /// A message was edited. Changes in the message content will come in a separate updateMessageContent
  UpdateMessageEdited(
      {required this.chatId,
      required this.messageId,
      required this.editDate,
      this.replyMarkup,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited
  int editDate;

  /// [replyMarkup] New message reply markup; may be null
  ReplyMarkup? replyMarkup;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageEdited.fromJson(Map<String, dynamic> json) {
    return UpdateMessageEdited(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      editDate: json['edit_date'] ?? 0,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "edit_date": this.editDate,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageIsPinned extends Update {
  /// The message pinned state was changed
  UpdateMessageIsPinned(
      {required this.chatId,
      required this.messageId,
      required this.isPinned,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] The message identifier
  int messageId;

  /// [isPinned] True, if the message is pinned
  bool isPinned;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) {
    return UpdateMessageIsPinned(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      isPinned: json['is_pinned'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'updateMessageIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageInteractionInfo extends Update {
  /// The information about interactions with a message has changed
  UpdateMessageInteractionInfo(
      {required this.chatId,
      required this.messageId,
      this.interactionInfo,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [interactionInfo] New information about interactions with the message; may be null
  MessageInteractionInfo? interactionInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) {
    return UpdateMessageInteractionInfo(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      interactionInfo: MessageInteractionInfo.fromJson(
          json['interaction_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "interaction_info":
          this.interactionInfo == null ? null : this.interactionInfo!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateMessageInteractionInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContentOpened extends Update {
  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
  UpdateMessageContentOpened(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) {
    return UpdateMessageContentOpened(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageContentOpened';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageMentionRead extends Update {
  /// A message with an unread mention was read
  UpdateMessageMentionRead(
      {required this.chatId,
      required this.messageId,
      required this.unreadMentionCount,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [unreadMentionCount] The new number of unread mention messages left in the chat
  int unreadMentionCount;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) {
    return UpdateMessageMentionRead(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      unreadMentionCount: json['unread_mention_count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "unread_mention_count": this.unreadMentionCount,
    };
  }

  static const CONSTRUCTOR = 'updateMessageMentionRead';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageLiveLocationViewed extends Update {
  /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
  UpdateMessageLiveLocationViewed(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Identifier of the chat with the live location message
  int chatId;

  /// [messageId] Identifier of the message with live location
  int messageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) {
    return UpdateMessageLiveLocationViewed(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageLiveLocationViewed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChat extends Update {
  /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
  UpdateNewChat({required this.chat, this.extra});

  /// [chat] The chat
  Chat chat;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewChat.fromJson(Map<String, dynamic> json) {
    return UpdateNewChat(
      chat: Chat.fromJson(json['chat'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat": this.chat.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatTitle extends Update {
  /// The title of a chat was changed
  UpdateChatTitle({required this.chatId, required this.title, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [title] The new chat title
  String title;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatTitle.fromJson(Map<String, dynamic> json) {
    return UpdateChatTitle(
      chatId: json['chat_id'] ?? 0,
      title: json['title'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'updateChatTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPhoto extends Update {
  /// A chat photo was changed
  UpdateChatPhoto({required this.chatId, this.photo, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [photo] The new chat photo; may be null
  ChatPhotoInfo? photo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatPhoto.fromJson(Map<String, dynamic> json) {
    return UpdateChatPhoto(
      chatId: json['chat_id'] ?? 0,
      photo: ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "photo": this.photo == null ? null : this.photo!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPermissions extends Update {
  /// Chat permissions was changed
  UpdateChatPermissions(
      {required this.chatId, required this.permissions, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [permissions] The new chat permissions
  ChatPermissions permissions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatPermissions.fromJson(Map<String, dynamic> json) {
    return UpdateChatPermissions(
      chatId: json['chat_id'] ?? 0,
      permissions:
          ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "permissions": this.permissions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatPermissions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatLastMessage extends Update {
  /// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
  UpdateChatLastMessage(
      {required this.chatId,
      this.lastMessage,
      required this.positions,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [lastMessage] The new last message in the chat; may be null
  Message? lastMessage;

  /// [positions] The new chat positions in the chat lists
  List<ChatPosition> positions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatLastMessage.fromJson(Map<String, dynamic> json) {
    return UpdateChatLastMessage(
      chatId: json['chat_id'] ?? 0,
      lastMessage:
          Message.fromJson(json['last_message'] ?? <String, dynamic>{}),
      positions: List<ChatPosition>.from((json['positions'] ?? [])
          .map((item) => ChatPosition.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "last_message":
          this.lastMessage == null ? null : this.lastMessage!.toJson(),
      "positions": this.positions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateChatLastMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPosition extends Update {
  /// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
  UpdateChatPosition(
      {required this.chatId, required this.position, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [position] New chat position. If new order is 0, then the chat needs to be removed from the list
  ChatPosition position;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatPosition.fromJson(Map<String, dynamic> json) {
    return UpdateChatPosition(
      chatId: json['chat_id'] ?? 0,
      position: ChatPosition.fromJson(json['position'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "position": this.position.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatPosition';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsMarkedAsUnread extends Update {
  /// A chat was marked as unread or was read
  UpdateChatIsMarkedAsUnread(
      {required this.chatId, required this.isMarkedAsUnread, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  bool isMarkedAsUnread;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) {
    return UpdateChatIsMarkedAsUnread(
      chatId: json['chat_id'] ?? 0,
      isMarkedAsUnread: json['is_marked_as_unread'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_marked_as_unread": this.isMarkedAsUnread,
    };
  }

  static const CONSTRUCTOR = 'updateChatIsMarkedAsUnread';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsBlocked extends Update {
  /// A chat was blocked or unblocked
  UpdateChatIsBlocked(
      {required this.chatId, required this.isBlocked, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [isBlocked] New value of is_blocked
  bool isBlocked;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatIsBlocked.fromJson(Map<String, dynamic> json) {
    return UpdateChatIsBlocked(
      chatId: json['chat_id'] ?? 0,
      isBlocked: json['is_blocked'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_blocked": this.isBlocked,
    };
  }

  static const CONSTRUCTOR = 'updateChatIsBlocked';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatHasScheduledMessages extends Update {
  /// A chat's has_scheduled_messages field has changed
  UpdateChatHasScheduledMessages(
      {required this.chatId, required this.hasScheduledMessages, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  bool hasScheduledMessages;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) {
    return UpdateChatHasScheduledMessages(
      chatId: json['chat_id'] ?? 0,
      hasScheduledMessages: json['has_scheduled_messages'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "has_scheduled_messages": this.hasScheduledMessages,
    };
  }

  static const CONSTRUCTOR = 'updateChatHasScheduledMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatVoiceChat extends Update {
  /// A chat voice chat state has changed
  UpdateChatVoiceChat(
      {required this.chatId,
      required this.voiceChatGroupCallId,
      required this.isVoiceChatEmpty,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [voiceChatGroupCallId] New value of voice_chat_group_call_id
  int voiceChatGroupCallId;

  /// [isVoiceChatEmpty] New value of is_voice_chat_empty
  bool isVoiceChatEmpty;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatVoiceChat.fromJson(Map<String, dynamic> json) {
    return UpdateChatVoiceChat(
      chatId: json['chat_id'] ?? 0,
      voiceChatGroupCallId: json['voice_chat_group_call_id'] ?? 0,
      isVoiceChatEmpty: json['is_voice_chat_empty'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "voice_chat_group_call_id": this.voiceChatGroupCallId,
      "is_voice_chat_empty": this.isVoiceChatEmpty,
    };
  }

  static const CONSTRUCTOR = 'updateChatVoiceChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDefaultDisableNotification extends Update {
  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
  UpdateChatDefaultDisableNotification(
      {required this.chatId,
      required this.defaultDisableNotification,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [defaultDisableNotification] The new default_disable_notification value
  bool defaultDisableNotification;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatDefaultDisableNotification.fromJson(
      Map<String, dynamic> json) {
    return UpdateChatDefaultDisableNotification(
      chatId: json['chat_id'] ?? 0,
      defaultDisableNotification: json['default_disable_notification'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "default_disable_notification": this.defaultDisableNotification,
    };
  }

  static const CONSTRUCTOR = 'updateChatDefaultDisableNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadInbox extends Update {
  /// Incoming messages were read or number of unread messages has been changed
  UpdateChatReadInbox(
      {required this.chatId,
      required this.lastReadInboxMessageId,
      required this.unreadCount,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  int unreadCount;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatReadInbox.fromJson(Map<String, dynamic> json) {
    return UpdateChatReadInbox(
      chatId: json['chat_id'] ?? 0,
      lastReadInboxMessageId: json['last_read_inbox_message_id'] ?? 0,
      unreadCount: json['unread_count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "last_read_inbox_message_id": this.lastReadInboxMessageId,
      "unread_count": this.unreadCount,
    };
  }

  static const CONSTRUCTOR = 'updateChatReadInbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadOutbox extends Update {
  /// Outgoing messages were read
  UpdateChatReadOutbox(
      {required this.chatId,
      required this.lastReadOutboxMessageId,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  int lastReadOutboxMessageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) {
    return UpdateChatReadOutbox(
      chatId: json['chat_id'] ?? 0,
      lastReadOutboxMessageId: json['last_read_outbox_message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "last_read_outbox_message_id": this.lastReadOutboxMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateChatReadOutbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatUnreadMentionCount extends Update {
  /// The chat unread_mention_count has changed
  UpdateChatUnreadMentionCount(
      {required this.chatId, required this.unreadMentionCount, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [unreadMentionCount] The number of unread mention messages left in the chat
  int unreadMentionCount;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) {
    return UpdateChatUnreadMentionCount(
      chatId: json['chat_id'] ?? 0,
      unreadMentionCount: json['unread_mention_count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "unread_mention_count": this.unreadMentionCount,
    };
  }

  static const CONSTRUCTOR = 'updateChatUnreadMentionCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatNotificationSettings extends Update {
  /// Notification settings for a chat were changed
  UpdateChatNotificationSettings(
      {required this.chatId, required this.notificationSettings, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [notificationSettings] The new notification settings
  ChatNotificationSettings notificationSettings;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    return UpdateChatNotificationSettings(
      chatId: json['chat_id'] ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "notification_settings": this.notificationSettings.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateScopeNotificationSettings extends Update {
  /// Notification settings for some type of chats were updated
  UpdateScopeNotificationSettings(
      {required this.scope, required this.notificationSettings, this.extra});

  /// [scope] Types of chats for which notification settings were updated
  NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings
  ScopeNotificationSettings notificationSettings;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    return UpdateScopeNotificationSettings(
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
    };
  }

  static const CONSTRUCTOR = 'updateScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatActionBar extends Update {
  /// The chat action bar was changed
  UpdateChatActionBar({required this.chatId, this.actionBar, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [actionBar] The new value of the action bar; may be null
  ChatActionBar? actionBar;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatActionBar.fromJson(Map<String, dynamic> json) {
    return UpdateChatActionBar(
      chatId: json['chat_id'] ?? 0,
      actionBar:
          ChatActionBar.fromJson(json['action_bar'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "action_bar": this.actionBar == null ? null : this.actionBar!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatActionBar';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReplyMarkup extends Update {
  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
  UpdateChatReplyMarkup(
      {required this.chatId, required this.replyMarkupMessageId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  int replyMarkupMessageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) {
    return UpdateChatReplyMarkup(
      chatId: json['chat_id'] ?? 0,
      replyMarkupMessageId: json['reply_markup_message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reply_markup_message_id": this.replyMarkupMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateChatReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDraftMessage extends Update {
  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update shouldn't be applied
  UpdateChatDraftMessage(
      {required this.chatId,
      this.draftMessage,
      required this.positions,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [draftMessage] The new draft message; may be null
  DraftMessage? draftMessage;

  /// [positions] The new chat positions in the chat lists
  List<ChatPosition> positions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) {
    return UpdateChatDraftMessage(
      chatId: json['chat_id'] ?? 0,
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] ?? <String, dynamic>{}),
      positions: List<ChatPosition>.from((json['positions'] ?? [])
          .map((item) => ChatPosition.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "draft_message":
          this.draftMessage == null ? null : this.draftMessage!.toJson(),
      "positions": this.positions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateChatDraftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatFilters extends Update {
  /// The list of chat filters or a chat filter has changed
  UpdateChatFilters({required this.chatFilters, this.extra});

  /// [chatFilters] The new list of chat filters
  List<ChatFilterInfo> chatFilters;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatFilters.fromJson(Map<String, dynamic> json) {
    return UpdateChatFilters(
      chatFilters: List<ChatFilterInfo>.from((json['chat_filters'] ?? [])
          .map((item) => ChatFilterInfo.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filters": this.chatFilters.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatOnlineMemberCount extends Update {
  /// The number of online group members has changed. This update with non-zero count is sent only for currently opened chats. There is no guarantee that it will be sent just after the count has changed
  UpdateChatOnlineMemberCount(
      {required this.chatId, required this.onlineMemberCount, this.extra});

  /// [chatId] Identifier of the chat
  int chatId;

  /// [onlineMemberCount] New number of online members in the chat, or 0 if unknown
  int onlineMemberCount;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) {
    return UpdateChatOnlineMemberCount(
      chatId: json['chat_id'] ?? 0,
      onlineMemberCount: json['online_member_count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "online_member_count": this.onlineMemberCount,
    };
  }

  static const CONSTRUCTOR = 'updateChatOnlineMemberCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotification extends Update {
  /// A notification was changed
  UpdateNotification(
      {required this.notificationGroupId,
      required this.notification,
      this.extra});

  /// [notificationGroupId] Unique notification group identifier
  int notificationGroupId;

  /// [notification] Changed notification
  Notification notification;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNotification.fromJson(Map<String, dynamic> json) {
    return UpdateNotification(
      notificationGroupId: json['notification_group_id'] ?? 0,
      notification:
          Notification.fromJson(json['notification'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "notification": this.notification.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotificationGroup extends Update {
  /// A list of active notifications in a notification group has changed
  UpdateNotificationGroup(
      {required this.notificationGroupId,
      required this.type,
      required this.chatId,
      required this.notificationSettingsChatId,
      required this.isSilent,
      required this.totalCount,
      required this.addedNotifications,
      required this.removedNotificationIds,
      this.extra});

  /// [notificationGroupId] Unique notification group identifier
  int notificationGroupId;

  /// [type] New type of the notification group
  NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group belong
  int chatId;

  /// [notificationSettingsChatId] Chat identifier, which notification settings must be applied to the added notifications
  int notificationSettingsChatId;

  /// [isSilent] True, if the notifications should be shown without sound
  bool isSilent;

  /// [totalCount] Total number of unread notifications in the group, can be bigger than number of active notifications
  int totalCount;

  /// [addedNotifications] List of added group notifications, sorted by notification updateNotificationGroup
  List<Notification> addedNotifications;

  /// [removedNotificationIds] Identifiers of removed group notifications, sorted by notification updateNotificationGroup
  List<int> removedNotificationIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNotificationGroup.fromJson(Map<String, dynamic> json) {
    return UpdateNotificationGroup(
      notificationGroupId: json['notification_group_id'] ?? 0,
      type: NotificationGroupType.fromJson(json['type'] ?? <String, dynamic>{}),
      chatId: json['chat_id'] ?? 0,
      notificationSettingsChatId: json['notification_settings_chat_id'] ?? 0,
      isSilent: json['is_silent'] ?? false,
      totalCount: json['total_count'] ?? 0,
      addedNotifications: List<Notification>.from(
          (json['added_notifications'] ?? [])
              .map((item) => Notification.fromJson(item ?? <String, dynamic>{}))
              .toList()),
      removedNotificationIds: List<int>.from(
          (json['removed_notification_ids'] ?? [])
              .map((item) => item ?? 0)
              .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "type": this.type.toJson(),
      "chat_id": this.chatId,
      "notification_settings_chat_id": this.notificationSettingsChatId,
      "is_silent": this.isSilent,
      "total_count": this.totalCount,
      "added_notifications":
          this.addedNotifications.map((i) => i.toJson()).toList(),
      "removed_notification_ids":
          this.removedNotificationIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateNotificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateActiveNotifications extends Update {
  /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
  UpdateActiveNotifications({required this.groups, this.extra});

  /// [groups] Lists of active notification groups
  List<NotificationGroup> groups;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateActiveNotifications.fromJson(Map<String, dynamic> json) {
    return UpdateActiveNotifications(
      groups: List<NotificationGroup>.from((json['groups'] ?? [])
          .map(
              (item) => NotificationGroup.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "groups": this.groups.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateActiveNotifications';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateHavePendingNotifications extends Update {
  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
  UpdateHavePendingNotifications(
      {required this.haveDelayedNotifications,
      required this.haveUnreceivedNotifications,
      this.extra});

  /// [haveDelayedNotifications] True, if there are some delayed notification updates, which will be sent soon
  bool haveDelayedNotifications;

  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived notifications, which are being fetched from the server
  bool haveUnreceivedNotifications;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) {
    return UpdateHavePendingNotifications(
      haveDelayedNotifications: json['have_delayed_notifications'] ?? false,
      haveUnreceivedNotifications:
          json['have_unreceived_notifications'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "have_delayed_notifications": this.haveDelayedNotifications,
      "have_unreceived_notifications": this.haveUnreceivedNotifications,
    };
  }

  static const CONSTRUCTOR = 'updateHavePendingNotifications';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDeleteMessages extends Update {
  /// Some messages were deleted
  UpdateDeleteMessages(
      {required this.chatId,
      required this.messageIds,
      required this.isPermanent,
      required this.fromCache,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageIds] Identifiers of the deleted messages
  List<int> messageIds;

  /// [isPermanent] True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  bool isPermanent;

  /// [fromCache] True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  bool fromCache;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateDeleteMessages.fromJson(Map<String, dynamic> json) {
    return UpdateDeleteMessages(
      chatId: json['chat_id'] ?? 0,
      messageIds: List<int>.from(
          (json['message_ids'] ?? []).map((item) => item ?? 0).toList()),
      isPermanent: json['is_permanent'] ?? false,
      fromCache: json['from_cache'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "is_permanent": this.isPermanent,
      "from_cache": this.fromCache,
    };
  }

  static const CONSTRUCTOR = 'updateDeleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserChatAction extends Update {
  /// User activity in the chat has changed
  UpdateUserChatAction(
      {required this.chatId,
      required this.messageThreadId,
      required this.userId,
      required this.action,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the action was performed
  int messageThreadId;

  /// [userId] Identifier of a user performing an action
  int userId;

  /// [action] The action description
  ChatAction action;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUserChatAction.fromJson(Map<String, dynamic> json) {
    return UpdateUserChatAction(
      chatId: json['chat_id'] ?? 0,
      messageThreadId: json['message_thread_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      action: ChatAction.fromJson(json['action'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_thread_id": this.messageThreadId,
      "user_id": this.userId,
      "action": this.action.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUserChatAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserStatus extends Update {
  /// The user went online or offline
  UpdateUserStatus({required this.userId, required this.status, this.extra});

  /// [userId] User identifier
  int userId;

  /// [status] New status of the user
  UserStatus status;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUserStatus.fromJson(Map<String, dynamic> json) {
    return UpdateUserStatus(
      userId: json['user_id'] ?? 0,
      status: UserStatus.fromJson(json['status'] ?? <String, dynamic>{}),
      extra: json['@extra'],
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

  static const CONSTRUCTOR = 'updateUserStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUser extends Update {
  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
  UpdateUser({required this.user, this.extra});

  /// [user] New data about the user
  User user;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUser.fromJson(Map<String, dynamic> json) {
    return UpdateUser(
      user: User.fromJson(json['user'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user": this.user.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroup extends Update {
  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
  UpdateBasicGroup({required this.basicGroup, this.extra});

  /// [basicGroup] New data about the group
  BasicGroup basicGroup;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateBasicGroup.fromJson(Map<String, dynamic> json) {
    return UpdateBasicGroup(
      basicGroup:
          BasicGroup.fromJson(json['basic_group'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group": this.basicGroup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroup extends Update {
  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
  UpdateSupergroup({required this.supergroup, this.extra});

  /// [supergroup] New data about the supergroup
  Supergroup supergroup;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateSupergroup.fromJson(Map<String, dynamic> json) {
    return UpdateSupergroup(
      supergroup:
          Supergroup.fromJson(json['supergroup'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup": this.supergroup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSecretChat extends Update {
  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
  UpdateSecretChat({required this.secretChat, this.extra});

  /// [secretChat] New data about the secret chat
  SecretChat secretChat;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateSecretChat.fromJson(Map<String, dynamic> json) {
    return UpdateSecretChat(
      secretChat:
          SecretChat.fromJson(json['secret_chat'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat": this.secretChat.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserFullInfo extends Update {
  /// Some data from userFullInfo has been changed
  UpdateUserFullInfo(
      {required this.userId, required this.userFullInfo, this.extra});

  /// [userId] User identifier
  int userId;

  /// [userFullInfo] New full information about the user
  UserFullInfo userFullInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUserFullInfo.fromJson(Map<String, dynamic> json) {
    return UpdateUserFullInfo(
      userId: json['user_id'] ?? 0,
      userFullInfo:
          UserFullInfo.fromJson(json['user_full_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "user_full_info": this.userFullInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUserFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroupFullInfo extends Update {
  /// Some data from basicGroupFullInfo has been changed
  UpdateBasicGroupFullInfo(
      {required this.basicGroupId,
      required this.basicGroupFullInfo,
      this.extra});

  /// [basicGroupId] Identifier of a basic group
  int basicGroupId;

  /// [basicGroupFullInfo] New full information about the group
  BasicGroupFullInfo basicGroupFullInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    return UpdateBasicGroupFullInfo(
      basicGroupId: json['basic_group_id'] ?? 0,
      basicGroupFullInfo: BasicGroupFullInfo.fromJson(
          json['basic_group_full_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "basic_group_full_info": this.basicGroupFullInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateBasicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroupFullInfo extends Update {
  /// Some data from supergroupFullInfo has been changed
  UpdateSupergroupFullInfo(
      {required this.supergroupId,
      required this.supergroupFullInfo,
      this.extra});

  /// [supergroupId] Identifier of the supergroup or channel
  int supergroupId;

  /// [supergroupFullInfo] New full information about the supergroup
  SupergroupFullInfo supergroupFullInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    return UpdateSupergroupFullInfo(
      supergroupId: json['supergroup_id'] ?? 0,
      supergroupFullInfo: SupergroupFullInfo.fromJson(
          json['supergroup_full_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "supergroup_full_info": this.supergroupFullInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSupergroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateServiceNotification extends Update {
  /// Service notification from the server. Upon receiving this the application must show a popup with the content of the notification
  UpdateServiceNotification(
      {required this.type, required this.content, this.extra});

  /// [type] Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" should be shown under notification; if user presses the second, all local data should be destroyed using Destroy method
  String type;

  /// [content] Notification content
  MessageContent content;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateServiceNotification.fromJson(Map<String, dynamic> json) {
    return UpdateServiceNotification(
      type: json['type'] ?? "",
      content: MessageContent.fromJson(json['content'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "content": this.content.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateServiceNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFile extends Update {
  /// Information about a file was updated
  UpdateFile({required this.file, this.extra});

  /// [file] New data about the file
  File file;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateFile.fromJson(Map<String, dynamic> json) {
    return UpdateFile(
      file: File.fromJson(json['file'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": this.file.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStart extends Update {
  /// The file generation process needs to be started by the application
  UpdateFileGenerationStart(
      {required this.generationId,
      required this.originalPath,
      required this.destinationPath,
      required this.conversion,
      this.extra});

  /// [generationId] Unique identifier for the generation process
  int generationId;

  /// [originalPath] The path to a file from which a new file is generated; may be empty
  String originalPath;

  /// [destinationPath] The path to a file that should be created and where the new file should be generated
  String destinationPath;

  /// [conversion] String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which should be downloaded by the application
  String conversion;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) {
    return UpdateFileGenerationStart(
      generationId: int.tryParse(json['generation_id'] ?? "") ?? 0,
      originalPath: json['original_path'] ?? "",
      destinationPath: json['destination_path'] ?? "",
      conversion: json['conversion'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "original_path": this.originalPath,
      "destination_path": this.destinationPath,
      "conversion": this.conversion,
    };
  }

  static const CONSTRUCTOR = 'updateFileGenerationStart';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStop extends Update {
  /// File generation is no longer needed
  UpdateFileGenerationStop({required this.generationId, this.extra});

  /// [generationId] Unique identifier for the generation process
  int generationId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) {
    return UpdateFileGenerationStop(
      generationId: int.tryParse(json['generation_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
    };
  }

  static const CONSTRUCTOR = 'updateFileGenerationStop';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateCall extends Update {
  /// New call was created or information about a call was updated
  UpdateCall({required this.call, this.extra});

  /// [call] New data about a call
  Call call;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateCall.fromJson(Map<String, dynamic> json) {
    return UpdateCall(
      call: Call.fromJson(json['call'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call": this.call.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateGroupCall extends Update {
  /// Information about a group call was updated
  UpdateGroupCall({required this.groupCall, this.extra});

  /// [groupCall] New data about a group call
  GroupCall groupCall;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateGroupCall.fromJson(Map<String, dynamic> json) {
    return UpdateGroupCall(
      groupCall: GroupCall.fromJson(json['group_call'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call": this.groupCall.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateGroupCallParticipant extends Update {
  /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
  UpdateGroupCallParticipant(
      {required this.groupCallId, required this.participant, this.extra});

  /// [groupCallId] Identifier of group call
  int groupCallId;

  /// [participant] New data about a participant
  GroupCallParticipant participant;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) {
    return UpdateGroupCallParticipant(
      groupCallId: json['group_call_id'] ?? 0,
      participant: GroupCallParticipant.fromJson(
          json['participant'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "participant": this.participant.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateGroupCallParticipant';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCallSignalingData extends Update {
  /// New call signaling data arrived
  UpdateNewCallSignalingData(
      {required this.callId, required this.data, this.extra});

  /// [callId] The call identifier
  int callId;

  /// [data] The data
  String data;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) {
    return UpdateNewCallSignalingData(
      callId: json['call_id'] ?? 0,
      data: json['data'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'updateNewCallSignalingData';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserPrivacySettingRules extends Update {
  /// Some privacy setting rules have been changed
  UpdateUserPrivacySettingRules(
      {required this.setting, required this.rules, this.extra});

  /// [setting] The privacy setting
  UserPrivacySetting setting;

  /// [rules] New privacy rules
  UserPrivacySettingRules rules;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    return UpdateUserPrivacySettingRules(
      setting:
          UserPrivacySetting.fromJson(json['setting'] ?? <String, dynamic>{}),
      rules: UserPrivacySettingRules.fromJson(
          json['rules'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting.toJson(),
      "rules": this.rules.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadMessageCount extends Update {
  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
  UpdateUnreadMessageCount(
      {required this.chatList,
      required this.unreadCount,
      required this.unreadUnmutedCount,
      this.extra});

  /// [chatList] The chat list with changed number of unread messages
  ChatList chatList;

  /// [unreadCount] Total number of unread messages
  int unreadCount;

  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  int unreadUnmutedCount;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) {
    return UpdateUnreadMessageCount(
      chatList: ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{}),
      unreadCount: json['unread_count'] ?? 0,
      unreadUnmutedCount: json['unread_unmuted_count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList.toJson(),
      "unread_count": this.unreadCount,
      "unread_unmuted_count": this.unreadUnmutedCount,
    };
  }

  static const CONSTRUCTOR = 'updateUnreadMessageCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadChatCount extends Update {
  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
  UpdateUnreadChatCount(
      {required this.chatList,
      required this.totalCount,
      required this.unreadCount,
      required this.unreadUnmutedCount,
      required this.markedAsUnreadCount,
      required this.markedAsUnreadUnmutedCount,
      this.extra});

  /// [chatList] The chat list with changed number of unread messages
  ChatList chatList;

  /// [totalCount] Approximate total number of chats in the chat list
  int totalCount;

  /// [unreadCount] Total number of unread chats
  int unreadCount;

  /// [unreadUnmutedCount] Total number of unread unmuted chats
  int unreadUnmutedCount;

  /// [markedAsUnreadCount] Total number of chats marked as unread
  int markedAsUnreadCount;

  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as unread
  int markedAsUnreadUnmutedCount;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) {
    return UpdateUnreadChatCount(
      chatList: ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{}),
      totalCount: json['total_count'] ?? 0,
      unreadCount: json['unread_count'] ?? 0,
      unreadUnmutedCount: json['unread_unmuted_count'] ?? 0,
      markedAsUnreadCount: json['marked_as_unread_count'] ?? 0,
      markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList.toJson(),
      "total_count": this.totalCount,
      "unread_count": this.unreadCount,
      "unread_unmuted_count": this.unreadUnmutedCount,
      "marked_as_unread_count": this.markedAsUnreadCount,
      "marked_as_unread_unmuted_count": this.markedAsUnreadUnmutedCount,
    };
  }

  static const CONSTRUCTOR = 'updateUnreadChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateOption extends Update {
  /// An option changed its value
  UpdateOption({required this.name, required this.value, this.extra});

  /// [name] The option name
  String name;

  /// [value] The new option value
  OptionValue value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateOption.fromJson(Map<String, dynamic> json) {
    return UpdateOption(
      name: json['name'] ?? "",
      value: OptionValue.fromJson(json['value'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "value": this.value.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStickerSet extends Update {
  /// A sticker set has changed
  UpdateStickerSet({required this.stickerSet, this.extra});

  /// [stickerSet] The sticker set
  StickerSet stickerSet;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateStickerSet.fromJson(Map<String, dynamic> json) {
    return UpdateStickerSet(
      stickerSet:
          StickerSet.fromJson(json['sticker_set'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set": this.stickerSet.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateInstalledStickerSets extends Update {
  /// The list of installed sticker sets was updated
  UpdateInstalledStickerSets(
      {required this.isMasks, required this.stickerSetIds, this.extra});

  /// [isMasks] True, if the list of installed mask sticker sets was updated
  bool isMasks;

  /// [stickerSetIds] The new list of installed ordinary sticker sets
  List<int> stickerSetIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    return UpdateInstalledStickerSets(
      isMasks: json['is_masks'] ?? false,
      stickerSetIds: List<int>.from(
          (json['sticker_set_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "sticker_set_ids": this.stickerSetIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTrendingStickerSets extends Update {
  /// The list of trending sticker sets was updated or some of them were viewed
  UpdateTrendingStickerSets({required this.stickerSets, this.extra});

  /// [stickerSets] The prefix of the list of trending sticker sets with the newest trending sticker sets
  StickerSets stickerSets;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    return UpdateTrendingStickerSets(
      stickerSets:
          StickerSets.fromJson(json['sticker_sets'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_sets": this.stickerSets.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateTrendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateRecentStickers extends Update {
  /// The list of recently used stickers was updated
  UpdateRecentStickers(
      {required this.isAttached, required this.stickerIds, this.extra});

  /// [isAttached] True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated
  bool isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  List<int> stickerIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateRecentStickers.fromJson(Map<String, dynamic> json) {
    return UpdateRecentStickers(
      isAttached: json['is_attached'] ?? false,
      stickerIds: List<int>.from(
          (json['sticker_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "sticker_ids": this.stickerIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFavoriteStickers extends Update {
  /// The list of favorite stickers was updated
  UpdateFavoriteStickers({required this.stickerIds, this.extra});

  /// [stickerIds] The new list of file identifiers of favorite stickers
  List<int> stickerIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) {
    return UpdateFavoriteStickers(
      stickerIds: List<int>.from(
          (json['sticker_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_ids": this.stickerIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateFavoriteStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedAnimations extends Update {
  /// The list of saved animations was updated
  UpdateSavedAnimations({required this.animationIds, this.extra});

  /// [animationIds] The new list of file identifiers of saved animations
  List<int> animationIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateSavedAnimations.fromJson(Map<String, dynamic> json) {
    return UpdateSavedAnimations(
      animationIds: List<int>.from(
          (json['animation_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation_ids": this.animationIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSelectedBackground extends Update {
  /// The selected background has changed
  UpdateSelectedBackground(
      {required this.forDarkTheme, this.background, this.extra});

  /// [forDarkTheme] True, if background for dark theme has changed
  bool forDarkTheme;

  /// [background] The new selected background; may be null
  Background? background;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateSelectedBackground.fromJson(Map<String, dynamic> json) {
    return UpdateSelectedBackground(
      forDarkTheme: json['for_dark_theme'] ?? false,
      background:
          Background.fromJson(json['background'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": this.forDarkTheme,
      "background": this.background == null ? null : this.background!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSelectedBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateLanguagePackStrings extends Update {
  /// Some language pack strings have been updated
  UpdateLanguagePackStrings(
      {required this.localizationTarget,
      required this.languagePackId,
      required this.strings,
      this.extra});

  /// [localizationTarget] Localization target to which the language pack belongs
  String localizationTarget;

  /// [languagePackId] Identifier of the updated language pack
  String languagePackId;

  /// [strings] List of changed language pack strings
  List<LanguagePackString> strings;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) {
    return UpdateLanguagePackStrings(
      localizationTarget: json['localization_target'] ?? "",
      languagePackId: json['language_pack_id'] ?? "",
      strings: List<LanguagePackString>.from((json['strings'] ?? [])
          .map((item) =>
              LanguagePackString.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "localization_target": this.localizationTarget,
      "language_pack_id": this.languagePackId,
      "strings": this.strings.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateLanguagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateConnectionState extends Update {
  /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
  UpdateConnectionState({required this.state, this.extra});

  /// [state] The new connection state
  ConnectionState state;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateConnectionState.fromJson(Map<String, dynamic> json) {
    return UpdateConnectionState(
      state: ConnectionState.fromJson(json['state'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "state": this.state.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateConnectionState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTermsOfService extends Update {
  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS update"
  UpdateTermsOfService(
      {required this.termsOfServiceId,
      required this.termsOfService,
      this.extra});

  /// [termsOfServiceId] Identifier of the terms of service
  String termsOfServiceId;

  /// [termsOfService] The new terms of service
  TermsOfService termsOfService;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateTermsOfService.fromJson(Map<String, dynamic> json) {
    return UpdateTermsOfService(
      termsOfServiceId: json['terms_of_service_id'] ?? "",
      termsOfService: TermsOfService.fromJson(
          json['terms_of_service'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": this.termsOfServiceId,
      "terms_of_service": this.termsOfService.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateTermsOfService';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUsersNearby extends Update {
  /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
  UpdateUsersNearby({required this.usersNearby, this.extra});

  /// [usersNearby] The new list of users nearby
  List<ChatNearby> usersNearby;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateUsersNearby.fromJson(Map<String, dynamic> json) {
    return UpdateUsersNearby(
      usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? [])
          .map((item) => ChatNearby.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "users_nearby": this.usersNearby.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateUsersNearby';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDiceEmojis extends Update {
  /// The list of supported dice emojis has changed
  UpdateDiceEmojis({required this.emojis, this.extra});

  /// [emojis] The new list of supported dice emojis
  List<String> emojis;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateDiceEmojis.fromJson(Map<String, dynamic> json) {
    return UpdateDiceEmojis(
      emojis: List<String>.from(
          (json['emojis'] ?? []).map((item) => item ?? "").toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emojis": this.emojis.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateDiceEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAnimationSearchParameters extends Update {
  /// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
  UpdateAnimationSearchParameters(
      {required this.provider, required this.emojis, this.extra});

  /// [provider] Name of the animation search provider
  String provider;

  /// [emojis] The new list of emojis suggested for searching
  List<String> emojis;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) {
    return UpdateAnimationSearchParameters(
      provider: json['provider'] ?? "",
      emojis: List<String>.from(
          (json['emojis'] ?? []).map((item) => item ?? "").toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "provider": this.provider,
      "emojis": this.emojis.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateAnimationSearchParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSuggestedActions extends Update {
  /// The list of suggested to the user actions has changed
  UpdateSuggestedActions(
      {required this.addedActions, required this.removedActions, this.extra});

  /// [addedActions] Added suggested actions
  List<SuggestedAction> addedActions;

  /// [removedActions] Removed suggested actions
  List<SuggestedAction> removedActions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateSuggestedActions.fromJson(Map<String, dynamic> json) {
    return UpdateSuggestedActions(
      addedActions: List<SuggestedAction>.from((json['added_actions'] ?? [])
          .map((item) => SuggestedAction.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      removedActions: List<SuggestedAction>.from((json['removed_actions'] ?? [])
          .map((item) => SuggestedAction.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "added_actions": this.addedActions.map((i) => i.toJson()).toList(),
      "removed_actions": this.removedActions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateSuggestedActions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineQuery extends Update {
  /// A new incoming inline query; for bots only
  UpdateNewInlineQuery(
      {required this.id,
      required this.senderUserId,
      this.userLocation,
      this.chatType,
      required this.query,
      required this.offset,
      this.extra});

  /// [id] Unique query identifier
  int id;

  /// [senderUserId] Identifier of the user who sent the query
  int senderUserId;

  /// [userLocation] User location; may be null
  Location? userLocation;

  /// [chatType] Contains information about the type of the chat, from which the query originated; may be null if unknown
  ChatType? chatType;

  /// [query] Text of the query
  String query;

  /// [offset] Offset of the first entry to return
  String offset;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) {
    return UpdateNewInlineQuery(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      senderUserId: json['sender_user_id'] ?? 0,
      userLocation:
          Location.fromJson(json['user_location'] ?? <String, dynamic>{}),
      chatType: ChatType.fromJson(json['chat_type'] ?? <String, dynamic>{}),
      query: json['query'] ?? "",
      offset: json['offset'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "user_location":
          this.userLocation == null ? null : this.userLocation!.toJson(),
      "chat_type": this.chatType == null ? null : this.chatType!.toJson(),
      "query": this.query,
      "offset": this.offset,
    };
  }

  static const CONSTRUCTOR = 'updateNewInlineQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChosenInlineResult extends Update {
  /// The user has chosen a result of an inline query; for bots only
  UpdateNewChosenInlineResult(
      {required this.senderUserId,
      this.userLocation,
      required this.query,
      required this.resultId,
      required this.inlineMessageId,
      this.extra});

  /// [senderUserId] Identifier of the user who sent the query
  int senderUserId;

  /// [userLocation] User location; may be null
  Location? userLocation;

  /// [query] Text of the query
  String query;

  /// [resultId] Identifier of the chosen result
  String resultId;

  /// [inlineMessageId] Identifier of the sent inline message, if known
  String inlineMessageId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) {
    return UpdateNewChosenInlineResult(
      senderUserId: json['sender_user_id'] ?? 0,
      userLocation:
          Location.fromJson(json['user_location'] ?? <String, dynamic>{}),
      query: json['query'] ?? "",
      resultId: json['result_id'] ?? "",
      inlineMessageId: json['inline_message_id'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": this.senderUserId,
      "user_location":
          this.userLocation == null ? null : this.userLocation!.toJson(),
      "query": this.query,
      "result_id": this.resultId,
      "inline_message_id": this.inlineMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateNewChosenInlineResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCallbackQuery extends Update {
  /// A new incoming callback query; for bots only
  UpdateNewCallbackQuery(
      {required this.id,
      required this.senderUserId,
      required this.chatId,
      required this.messageId,
      required this.chatInstance,
      required this.payload,
      this.extra});

  /// [id] Unique query identifier
  int id;

  /// [senderUserId] Identifier of the user who sent the query
  int senderUserId;

  /// [chatId] Identifier of the chat where the query was sent
  int chatId;

  /// [messageId] Identifier of the message, from which the query originated
  int messageId;

  /// [chatInstance] Identifier that uniquely corresponds to the chat to which the message was sent
  int chatInstance;

  /// [payload] Query payload
  CallbackQueryPayload payload;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) {
    return UpdateNewCallbackQuery(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      senderUserId: json['sender_user_id'] ?? 0,
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      chatInstance: int.tryParse(json['chat_instance'] ?? "") ?? 0,
      payload:
          CallbackQueryPayload.fromJson(json['payload'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "chat_instance": this.chatInstance,
      "payload": this.payload.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineCallbackQuery extends Update {
  /// A new incoming callback query from a message sent via a bot; for bots only
  UpdateNewInlineCallbackQuery(
      {required this.id,
      required this.senderUserId,
      required this.inlineMessageId,
      required this.chatInstance,
      required this.payload,
      this.extra});

  /// [id] Unique query identifier
  int id;

  /// [senderUserId] Identifier of the user who sent the query
  int senderUserId;

  /// [inlineMessageId] Identifier of the inline message, from which the query originated
  String inlineMessageId;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message was sent to
  int chatInstance;

  /// [payload] Query payload
  CallbackQueryPayload payload;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) {
    return UpdateNewInlineCallbackQuery(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      senderUserId: json['sender_user_id'] ?? 0,
      inlineMessageId: json['inline_message_id'] ?? "",
      chatInstance: int.tryParse(json['chat_instance'] ?? "") ?? 0,
      payload:
          CallbackQueryPayload.fromJson(json['payload'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "inline_message_id": this.inlineMessageId,
      "chat_instance": this.chatInstance,
      "payload": this.payload.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewInlineCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewShippingQuery extends Update {
  /// A new incoming shipping query; for bots only. Only for invoices with flexible price
  UpdateNewShippingQuery(
      {required this.id,
      required this.senderUserId,
      required this.invoicePayload,
      required this.shippingAddress,
      this.extra});

  /// [id] Unique query identifier
  int id;

  /// [senderUserId] Identifier of the user who sent the query
  int senderUserId;

  /// [invoicePayload] Invoice payload
  String invoicePayload;

  /// [shippingAddress] User shipping address
  Address shippingAddress;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) {
    return UpdateNewShippingQuery(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      senderUserId: json['sender_user_id'] ?? 0,
      invoicePayload: json['invoice_payload'] ?? "",
      shippingAddress:
          Address.fromJson(json['shipping_address'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "invoice_payload": this.invoicePayload,
      "shipping_address": this.shippingAddress.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewShippingQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewPreCheckoutQuery extends Update {
  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
  UpdateNewPreCheckoutQuery(
      {required this.id,
      required this.senderUserId,
      required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      required this.shippingOptionId,
      this.orderInfo,
      this.extra});

  /// [id] Unique query identifier
  int id;

  /// [senderUserId] Identifier of the user who sent the query
  int senderUserId;

  /// [currency] Currency for the product price
  String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int totalAmount;

  /// [invoicePayload] Invoice payload
  String invoicePayload;

  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may be empty if not applicable
  String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  OrderInfo? orderInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    return UpdateNewPreCheckoutQuery(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      senderUserId: json['sender_user_id'] ?? 0,
      currency: json['currency'] ?? "",
      totalAmount: json['total_amount'] ?? 0,
      invoicePayload: json['invoice_payload'] ?? "",
      shippingOptionId: json['shipping_option_id'] ?? "",
      orderInfo: OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "invoice_payload": this.invoicePayload,
      "shipping_option_id": this.shippingOptionId,
      "order_info": this.orderInfo == null ? null : this.orderInfo!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewPreCheckoutQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomEvent extends Update {
  /// A new incoming event; for bots only
  UpdateNewCustomEvent({required this.event, this.extra});

  /// [event] A JSON-serialized event
  String event;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) {
    return UpdateNewCustomEvent(
      event: json['event'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "event": this.event,
    };
  }

  static const CONSTRUCTOR = 'updateNewCustomEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomQuery extends Update {
  /// A new incoming query; for bots only
  UpdateNewCustomQuery(
      {required this.id,
      required this.data,
      required this.timeout,
      this.extra});

  /// [id] The query identifier
  int id;

  /// [data] JSON-serialized query data
  String data;

  /// [timeout] Query timeout
  int timeout;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) {
    return UpdateNewCustomQuery(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      data: json['data'] ?? "",
      timeout: json['timeout'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "data": this.data,
      "timeout": this.timeout,
    };
  }

  static const CONSTRUCTOR = 'updateNewCustomQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePoll extends Update {
  /// A poll was updated; for bots only
  UpdatePoll({required this.poll, this.extra});

  /// [poll] New data about the poll
  Poll poll;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdatePoll.fromJson(Map<String, dynamic> json) {
    return UpdatePoll(
      poll: Poll.fromJson(json['poll'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll": this.poll.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updatePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePollAnswer extends Update {
  /// A user changed the answer to a poll; for bots only
  UpdatePollAnswer(
      {required this.pollId,
      required this.userId,
      required this.optionIds,
      this.extra});

  /// [pollId] Unique poll identifier
  int pollId;

  /// [userId] The user, who changed the answer to the poll
  int userId;

  /// [optionIds] 0-based identifiers of answer options, chosen by the user
  List<int> optionIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UpdatePollAnswer.fromJson(Map<String, dynamic> json) {
    return UpdatePollAnswer(
      pollId: int.tryParse(json['poll_id'] ?? "") ?? 0,
      userId: json['user_id'] ?? 0,
      optionIds: List<int>.from(
          (json['option_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll_id": this.pollId,
      "user_id": this.userId,
      "option_ids": this.optionIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updatePollAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
