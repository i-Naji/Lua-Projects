part of '../tdapi.dart';

class ResendPhoneNumberConfirmationCode extends TdFunction {
  /// Resends phone number confirmation code
  ResendPhoneNumberConfirmationCode({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResendPhoneNumberConfirmationCode.fromJson(
      Map<String, dynamic> json) {
    return ResendPhoneNumberConfirmationCode(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
