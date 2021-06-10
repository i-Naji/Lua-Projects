part of '../tdapi.dart';

class GroupCallId extends TdObject {
  /// Contains the group call identifier
  GroupCallId({required this.id, this.extra});

  /// [id] Group call identifier
  int id;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory GroupCallId.fromJson(Map<String, dynamic> json) {
    return GroupCallId(
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

  static const CONSTRUCTOR = 'groupCallId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
