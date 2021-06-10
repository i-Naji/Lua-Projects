part of '../tdapi.dart';

class SendEmailAddressVerificationCode extends TdFunction {
  /// Sends a code to verify an email address to be added to a user's Telegram Passport
  SendEmailAddressVerificationCode({required this.emailAddress, this.extra});

  /// [emailAddress] Email address
  String emailAddress;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) {
    return SendEmailAddressVerificationCode(
      emailAddress: json['email_address'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "email_address": this.emailAddress,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
