part of '../tdapi.dart';

class ChatMember extends TdObject {
  /// A user with information about joining/leaving a chat
  ChatMember(
      {required this.userId,
      required this.inviterUserId,
      required this.joinedChatDate,
      required this.status,
      this.botInfo,
      this.extra});

  /// [userId] User identifier of the chat member
  int userId;

  /// [inviterUserId] Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
  int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the chat
  int joinedChatDate;

  /// [status] Status of the member in the chat
  ChatMemberStatus status;

  /// [botInfo] If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not the chat member
  BotInfo? botInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatMember.fromJson(Map<String, dynamic> json) {
    return ChatMember(
      userId: json['user_id'] ?? 0,
      inviterUserId: json['inviter_user_id'] ?? 0,
      joinedChatDate: json['joined_chat_date'] ?? 0,
      status: ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{}),
      botInfo: BotInfo.fromJson(json['bot_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "inviter_user_id": this.inviterUserId,
      "joined_chat_date": this.joinedChatDate,
      "status": this.status.toJson(),
      "bot_info": this.botInfo == null ? null : this.botInfo!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
