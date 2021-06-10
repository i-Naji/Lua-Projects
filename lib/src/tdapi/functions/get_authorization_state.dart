part of '../tdapi.dart';

class GetAuthorizationState extends TdFunction {
  /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization
  GetAuthorizationState({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetAuthorizationState.fromJson(Map<String, dynamic> json) {
    return GetAuthorizationState(
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

  static const CONSTRUCTOR = 'getAuthorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
