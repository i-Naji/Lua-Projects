part of '../tdapi.dart';

class TemporaryPasswordState extends TdObject {
  /// Returns information about the availability of a temporary password, which can be used for payments
  TemporaryPasswordState(
      {required this.hasPassword, required this.validFor, this.extra});

  /// [hasPassword] True, if a temporary password is available
  bool hasPassword;

  /// [validFor] Time left before the temporary password expires, in seconds
  int validFor;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TemporaryPasswordState.fromJson(Map<String, dynamic> json) {
    return TemporaryPasswordState(
      hasPassword: json['has_password'] ?? false,
      validFor: json['valid_for'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_password": this.hasPassword,
      "valid_for": this.validFor,
    };
  }

  static const CONSTRUCTOR = 'temporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
