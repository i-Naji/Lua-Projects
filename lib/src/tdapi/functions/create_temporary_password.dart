part of '../tdapi.dart';

class CreateTemporaryPassword extends TdFunction {
  /// Creates a new temporary password for processing payments
  CreateTemporaryPassword(
      {required this.password, required this.validFor, this.extra});

  /// [password] Persistent user password
  String password;

  /// [validFor] Time during which the temporary password will be valid, in seconds; should be between 60 and 86400
  int validFor;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateTemporaryPassword.fromJson(Map<String, dynamic> json) {
    return CreateTemporaryPassword(
      password: json['password'] ?? "",
      validFor: json['valid_for'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "valid_for": this.validFor,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createTemporaryPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
