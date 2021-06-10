part of '../tdapi.dart';

class Users extends TdObject {
  /// Represents a list of users
  Users({required this.totalCount, required this.userIds, this.extra});

  /// [totalCount] Approximate total count of users found
  int totalCount;

  /// [userIds] A list of user identifiers
  List<int> userIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      totalCount: json['total_count'] ?? 0,
      userIds: List<int>.from(
          (json['user_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "user_ids": this.userIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'users';

  @override
  String getConstructor() => CONSTRUCTOR;
}
