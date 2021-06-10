part of '../tdapi.dart';

class TerminateSession extends TdFunction {
  /// Terminates a session of the current user
  TerminateSession({required this.sessionId, this.extra});

  /// [sessionId] Session identifier
  int sessionId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TerminateSession.fromJson(Map<String, dynamic> json) {
    return TerminateSession(
      sessionId: int.tryParse(json['session_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "session_id": this.sessionId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'terminateSession';

  @override
  String getConstructor() => CONSTRUCTOR;
}
