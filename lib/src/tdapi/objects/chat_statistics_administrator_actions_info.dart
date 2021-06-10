part of '../tdapi.dart';

class ChatStatisticsAdministratorActionsInfo extends TdObject {
  /// Contains statistics about administrator actions done by a user
  ChatStatisticsAdministratorActionsInfo(
      {required this.userId,
      required this.deletedMessageCount,
      required this.bannedUserCount,
      required this.restrictedUserCount});

  /// [userId] Administrator user identifier
  int userId;

  /// [deletedMessageCount] Number of messages deleted by the administrator
  int deletedMessageCount;

  /// [bannedUserCount] Number of users banned by the administrator
  int bannedUserCount;

  /// [restrictedUserCount] Number of users restricted by the administrator
  int restrictedUserCount;

  /// Parse from a json
  factory ChatStatisticsAdministratorActionsInfo.fromJson(
      Map<String, dynamic> json) {
    return ChatStatisticsAdministratorActionsInfo(
      userId: json['user_id'] ?? 0,
      deletedMessageCount: json['deleted_message_count'] ?? 0,
      bannedUserCount: json['banned_user_count'] ?? 0,
      restrictedUserCount: json['restricted_user_count'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "deleted_message_count": this.deletedMessageCount,
      "banned_user_count": this.bannedUserCount,
      "restricted_user_count": this.restrictedUserCount,
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsAdministratorActionsInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
