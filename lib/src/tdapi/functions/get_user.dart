part of '../tdapi.dart';

class GetUser extends TdFunction {
  /// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
  GetUser({required this.userId, this.extra});

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetUser.fromJson(Map<String, dynamic> json) {
    return GetUser(
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

  static const CONSTRUCTOR = 'getUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
