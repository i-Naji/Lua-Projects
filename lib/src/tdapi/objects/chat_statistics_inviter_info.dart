part of '../tdapi.dart';

class ChatStatisticsInviterInfo extends TdObject {
  /// Contains statistics about number of new members invited by a user
  ChatStatisticsInviterInfo(
      {required this.userId, required this.addedMemberCount});

  /// [userId] User identifier
  int userId;

  /// [addedMemberCount] Number of new members invited by the user
  int addedMemberCount;

  /// Parse from a json
  factory ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json) {
    return ChatStatisticsInviterInfo(
      userId: json['user_id'] ?? 0,
      addedMemberCount: json['added_member_count'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "added_member_count": this.addedMemberCount,
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsInviterInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
