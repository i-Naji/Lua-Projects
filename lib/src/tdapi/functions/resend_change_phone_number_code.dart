part of '../tdapi.dart';

class ResendChangePhoneNumberCode extends TdFunction {
  /// Re-sends the authentication code sent to confirm a new phone number for the user. Works only if the previously received authenticationCodeInfo next_code_type was not null
  ResendChangePhoneNumberCode({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResendChangePhoneNumberCode.fromJson(Map<String, dynamic> json) {
    return ResendChangePhoneNumberCode(
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

  static const CONSTRUCTOR = 'resendChangePhoneNumberCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
