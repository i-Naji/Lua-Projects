part of '../tdapi.dart';

class GetUserFullInfo extends TdFunction {
  /// Returns full information about a user by their identifier
  GetUserFullInfo({required this.userId, this.extra});

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetUserFullInfo.fromJson(Map<String, dynamic> json) {
    return GetUserFullInfo(
      userId: json['user_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getUserFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
