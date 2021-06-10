part of '../tdapi.dart';

class GetGroupsInCommon extends TdFunction {
  /// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date
  GetGroupsInCommon(
      {required this.userId,
      required this.offsetChatId,
      required this.limit,
      this.extra});

  /// [userId] User identifier
  int userId;

  /// [offsetChatId] Chat identifier starting from which to return chats; use 0 for the first request
  int offsetChatId;

  /// [limit] The maximum number of chats to be returned; up to 100
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetGroupsInCommon.fromJson(Map<String, dynamic> json) {
    return GetGroupsInCommon(
      userId: json['user_id'] ?? 0,
      offsetChatId: json['offset_chat_id'] ?? 0,
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "offset_chat_id": this.offsetChatId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getGroupsInCommon';

  @override
  String getConstructor() => CONSTRUCTOR;
}
