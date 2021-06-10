part of '../tdapi.dart';

class GetActiveSessions extends TdFunction {
  /// Returns all active sessions of the current user
  GetActiveSessions({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetActiveSessions.fromJson(Map<String, dynamic> json) {
    return GetActiveSessions(
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

  static const CONSTRUCTOR = 'getActiveSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
