part of '../tdapi.dart';

class SharePhoneNumber extends TdFunction {
  /// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber
  SharePhoneNumber({required this.userId, this.extra});

  /// [userId] Identifier of the user with whom to share the phone number. The user must be a mutual contact
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SharePhoneNumber.fromJson(Map<String, dynamic> json) {
    return SharePhoneNumber(
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

  static const CONSTRUCTOR = 'sharePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
