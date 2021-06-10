part of '../tdapi.dart';

class GetTemporaryPasswordState extends TdFunction {
  /// Returns information about the current temporary password
  GetTemporaryPasswordState({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetTemporaryPasswordState.fromJson(Map<String, dynamic> json) {
    return GetTemporaryPasswordState(
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

  static const CONSTRUCTOR = 'getTemporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
