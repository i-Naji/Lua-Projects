part of '../tdapi.dart';

class ChatInviteLinkInfo extends TdObject {
  /// Contains information about a chat invite link
  ChatInviteLinkInfo(
      {required this.chatId,
      required this.accessibleFor,
      required this.type,
      required this.title,
      this.photo,
      required this.memberCount,
      required this.memberUserIds,
      required this.isPublic,
      this.extra});

  /// [chatId] Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  int chatId;

  /// [accessibleFor] If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  int accessibleFor;

  /// [type] Contains information about the type of the chat
  ChatType type;

  /// [title] Title of the chat
  String title;

  /// [photo] Chat photo; may be null
  ChatPhotoInfo? photo;

  /// [memberCount] Number of members in the chat
  int memberCount;

  /// [memberUserIds] User identifiers of some chat members that may be known to the current user
  List<int> memberUserIds;

  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  bool isPublic;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) {
    return ChatInviteLinkInfo(
      chatId: json['chat_id'] ?? 0,
      accessibleFor: json['accessible_for'] ?? 0,
      type: ChatType.fromJson(json['type'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      photo: ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{}),
      memberCount: json['member_count'] ?? 0,
      memberUserIds: List<int>.from(
          (json['member_user_ids'] ?? []).map((item) => item ?? 0).toList()),
      isPublic: json['is_public'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "accessible_for": this.accessibleFor,
      "type": this.type.toJson(),
      "title": this.title,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "member_count": this.memberCount,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
      "is_public": this.isPublic,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
