part of '../tdapi.dart';

class CallId extends TdObject {
  /// Contains the call identifier
  CallId({required this.id, this.extra});

  /// [id] Call identifier
  int id;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CallId.fromJson(Map<String, dynamic> json) {
    return CallId(
      id: json['id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
    };
  }

  static const CONSTRUCTOR = 'callId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
