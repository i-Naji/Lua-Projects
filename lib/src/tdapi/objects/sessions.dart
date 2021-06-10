part of '../tdapi.dart';

class Sessions extends TdObject {
  /// Contains a list of sessions
  Sessions({required this.sessions, this.extra});

  /// [sessions] List of sessions
  List<Session> sessions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Sessions.fromJson(Map<String, dynamic> json) {
    return Sessions(
      sessions: List<Session>.from((json['sessions'] ?? [])
          .map((item) => Session.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sessions": this.sessions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'sessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
