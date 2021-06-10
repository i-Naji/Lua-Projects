part of '../tdapi.dart';

class GetRecoveryEmailAddress extends TdFunction {
  /// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user
  GetRecoveryEmailAddress({required this.password, this.extra});

  /// [password] The password for the current user
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetRecoveryEmailAddress.fromJson(Map<String, dynamic> json) {
    return GetRecoveryEmailAddress(
      password: json['password'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRecoveryEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
