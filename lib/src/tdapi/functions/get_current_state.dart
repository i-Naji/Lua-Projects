part of '../tdapi.dart';

class GetCurrentState extends TdFunction {
  /// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization
  GetCurrentState({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetCurrentState.fromJson(Map<String, dynamic> json) {
    return GetCurrentState(
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

  static const CONSTRUCTOR = 'getCurrentState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
