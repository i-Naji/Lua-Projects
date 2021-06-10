part of '../tdapi.dart';

class AuthenticationCodeInfo extends TdObject {
  /// Information about the authentication code that was sent
  AuthenticationCodeInfo(
      {required this.phoneNumber,
      required this.type,
      this.nextType,
      required this.timeout,
      this.extra});

  /// [phoneNumber] A phone number that is being authenticated
  String phoneNumber;

  /// [type] Describes the way the code was sent to the user
  AuthenticationCodeType type;

  /// [nextType] Describes the way the next code will be sent to the user; may be null
  AuthenticationCodeType? nextType;

  /// [timeout] Timeout before the code should be re-sent, in seconds
  int timeout;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) {
    return AuthenticationCodeInfo(
      phoneNumber: json['phone_number'] ?? "",
      type:
          AuthenticationCodeType.fromJson(json['type'] ?? <String, dynamic>{}),
      nextType: AuthenticationCodeType.fromJson(
          json['next_type'] ?? <String, dynamic>{}),
      timeout: json['timeout'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "type": this.type.toJson(),
      "next_type": this.nextType == null ? null : this.nextType!.toJson(),
      "timeout": this.timeout,
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
