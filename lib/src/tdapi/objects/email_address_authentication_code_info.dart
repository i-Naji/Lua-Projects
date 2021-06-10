part of '../tdapi.dart';

class EmailAddressAuthenticationCodeInfo extends TdObject {
  /// Information about the email address authentication code that was sent
  EmailAddressAuthenticationCodeInfo(
      {required this.emailAddressPattern, required this.length, this.extra});

  /// [emailAddressPattern] Pattern of the email address to which an authentication code was sent
  String emailAddressPattern;

  /// [length] Length of the code; 0 if unknown
  int length;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory EmailAddressAuthenticationCodeInfo.fromJson(
      Map<String, dynamic> json) {
    return EmailAddressAuthenticationCodeInfo(
      emailAddressPattern: json['email_address_pattern'] ?? "",
      length: json['length'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "email_address_pattern": this.emailAddressPattern,
      "length": this.length,
    };
  }

  static const CONSTRUCTOR = 'emailAddressAuthenticationCodeInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
