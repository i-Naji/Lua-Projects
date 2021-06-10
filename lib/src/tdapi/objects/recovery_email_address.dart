part of '../tdapi.dart';

class RecoveryEmailAddress extends TdObject {
  /// Contains information about the current recovery email address
  RecoveryEmailAddress({required this.recoveryEmailAddress, this.extra});

  /// [recoveryEmailAddress] Recovery email address
  String recoveryEmailAddress;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory RecoveryEmailAddress.fromJson(Map<String, dynamic> json) {
    return RecoveryEmailAddress(
      recoveryEmailAddress: json['recovery_email_address'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "recovery_email_address": this.recoveryEmailAddress,
    };
  }

  static const CONSTRUCTOR = 'recoveryEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
