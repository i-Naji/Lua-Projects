part of '../tdapi.dart';

class GetGroupCall extends TdFunction {
  /// Returns information about a group call
  GetGroupCall({required this.groupCallId, this.extra});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetGroupCall.fromJson(Map<String, dynamic> json) {
    return GetGroupCall(
      groupCallId: json['group_call_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
