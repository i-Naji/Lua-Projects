part of '../tdapi.dart';

class GetPasswordState extends TdFunction {
  /// Returns the current state of 2-step verification
  GetPasswordState({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPasswordState.fromJson(Map<String, dynamic> json) {
    return GetPasswordState(
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

  static const CONSTRUCTOR = 'getPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
