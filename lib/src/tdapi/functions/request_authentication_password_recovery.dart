part of '../tdapi.dart';

class RequestAuthenticationPasswordRecovery extends TdFunction {
  /// Requests to send a password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
  RequestAuthenticationPasswordRecovery({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RequestAuthenticationPasswordRecovery.fromJson(
      Map<String, dynamic> json) {
    return RequestAuthenticationPasswordRecovery(
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

  static const CONSTRUCTOR = 'requestAuthenticationPasswordRecovery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
