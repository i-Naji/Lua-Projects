part of '../tdapi.dart';

class RequestPasswordRecovery extends TdFunction {
  /// Requests to send a password recovery code to an email address that was previously set up
  RequestPasswordRecovery({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RequestPasswordRecovery.fromJson(Map<String, dynamic> json) {
    return RequestPasswordRecovery(
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

  static const CONSTRUCTOR = 'requestPasswordRecovery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
