part of '../tdapi.dart';

class LeaveGroupCall extends TdFunction {
  /// Leaves a group call
  LeaveGroupCall({required this.groupCallId, this.extra});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory LeaveGroupCall.fromJson(Map<String, dynamic> json) {
    return LeaveGroupCall(
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

  static const CONSTRUCTOR = 'leaveGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
