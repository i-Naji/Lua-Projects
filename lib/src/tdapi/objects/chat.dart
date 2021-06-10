part of '../tdapi.dart';

class Chat extends TdObject {
  /// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
  Chat(
      {required this.id,
      required this.type,
      required this.title,
      this.photo,
      required this.permissions,
      this.lastMessage,
      required this.positions,
      required this.isMarkedAsUnread,
      required this.isBlocked,
      required this.hasScheduledMessages,
      required this.canBeDeletedOnlyForSelf,
      required this.canBeDeletedForAllUsers,
      required this.canBeReported,
      required this.defaultDisableNotification,
      required this.unreadCount,
      required this.lastReadInboxMessageId,
      required this.lastReadOutboxMessageId,
      required this.unreadMentionCount,
      required this.notificationSettings,
      this.actionBar,
      required this.voiceChatGroupCallId,
      required this.isVoiceChatEmpty,
      required this.replyMarkupMessageId,
      this.draftMessage,
      required this.clientData,
      this.extra});

  /// [id] Chat unique identifier
  int id;

  /// [type] Type of the chat
  ChatType type;

  /// [title] Chat title
  String title;

  /// [photo] Chat photo; may be null
  ChatPhotoInfo? photo;

  /// [permissions] Actions that non-administrator chat members are allowed to take in the chat
  ChatPermissions permissions;

  /// [lastMessage] Last message in the chat; may be null
  Message? lastMessage;

  /// [positions] Positions of the chat in chat lists
  List<ChatPosition> positions;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  bool isMarkedAsUnread;

  /// [isBlocked] True, if the chat is blocked by the current user and private messages from the chat can't be received
  bool isBlocked;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  bool hasScheduledMessages;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
  bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for all users
  bool canBeDeletedForAllUsers;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators through reportChat
  bool canBeReported;

  /// [defaultDisableNotification] Default value of the disable_notification parameter, used when a message is sent to the chat
  bool defaultDisableNotification;

  /// [unreadCount] Number of unread messages in the chat
  int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the chat
  int unreadMentionCount;

  /// [notificationSettings] Notification settings for this chat
  ChatNotificationSettings notificationSettings;

  /// [actionBar] Describes actions which should be possible to do through a chat action bar; may be null
  ChatActionBar? actionBar;

  /// [voiceChatGroupCallId] Group call identifier of an active voice chat; 0 if none or unknown. The voice chat can be received through the method getGroupCall
  int voiceChatGroupCallId;

  /// [isVoiceChatEmpty] True, if an active voice chat is empty
  bool isVoiceChatEmpty;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null
  DraftMessage? draftMessage;

  /// [clientData] Contains application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used
  String clientData;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'] ?? 0,
      type: ChatType.fromJson(json['type'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      photo: ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{}),
      permissions:
          ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{}),
      lastMessage:
          Message.fromJson(json['last_message'] ?? <String, dynamic>{}),
      positions: List<ChatPosition>.from((json['positions'] ?? [])
          .map((item) => ChatPosition.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      isMarkedAsUnread: json['is_marked_as_unread'] ?? false,
      isBlocked: json['is_blocked'] ?? false,
      hasScheduledMessages: json['has_scheduled_messages'] ?? false,
      canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'] ?? false,
      canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'] ?? false,
      canBeReported: json['can_be_reported'] ?? false,
      defaultDisableNotification: json['default_disable_notification'] ?? false,
      unreadCount: json['unread_count'] ?? 0,
      lastReadInboxMessageId: json['last_read_inbox_message_id'] ?? 0,
      lastReadOutboxMessageId: json['last_read_outbox_message_id'] ?? 0,
      unreadMentionCount: json['unread_mention_count'] ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] ?? <String, dynamic>{}),
      actionBar:
          ChatActionBar.fromJson(json['action_bar'] ?? <String, dynamic>{}),
      voiceChatGroupCallId: json['voice_chat_group_call_id'] ?? 0,
      isVoiceChatEmpty: json['is_voice_chat_empty'] ?? false,
      replyMarkupMessageId: json['reply_markup_message_id'] ?? 0,
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] ?? <String, dynamic>{}),
      clientData: json['client_data'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "type": this.type.toJson(),
      "title": this.title,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "permissions": this.permissions.toJson(),
      "last_message":
          this.lastMessage == null ? null : this.lastMessage!.toJson(),
      "positions": this.positions.map((i) => i.toJson()).toList(),
      "is_marked_as_unread": this.isMarkedAsUnread,
      "is_blocked": this.isBlocked,
      "has_scheduled_messages": this.hasScheduledMessages,
      "can_be_deleted_only_for_self": this.canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": this.canBeDeletedForAllUsers,
      "can_be_reported": this.canBeReported,
      "default_disable_notification": this.defaultDisableNotification,
      "unread_count": this.unreadCount,
      "last_read_inbox_message_id": this.lastReadInboxMessageId,
      "last_read_outbox_message_id": this.lastReadOutboxMessageId,
      "unread_mention_count": this.unreadMentionCount,
      "notification_settings": this.notificationSettings.toJson(),
      "action_bar": this.actionBar == null ? null : this.actionBar!.toJson(),
      "voice_chat_group_call_id": this.voiceChatGroupCallId,
      "is_voice_chat_empty": this.isVoiceChatEmpty,
      "reply_markup_message_id": this.replyMarkupMessageId,
      "draft_message":
          this.draftMessage == null ? null : this.draftMessage!.toJson(),
      "client_data": this.clientData,
    };
  }

  static const CONSTRUCTOR = 'chat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
