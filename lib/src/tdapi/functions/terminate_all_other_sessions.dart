part of '../tdapi.dart';

class TerminateAllOtherSessions extends TdFunction {
  /// Terminates all other sessions of the current user
  TerminateAllOtherSessions({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TerminateAllOtherSessions.fromJson(Map<String, dynamic> json) {
    return TerminateAllOtherSessions(
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

  static const CONSTRUCTOR = 'terminateAllOtherSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
