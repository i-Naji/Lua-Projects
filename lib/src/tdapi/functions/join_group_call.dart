part of '../tdapi.dart';

class JoinGroupCall extends TdFunction {
  /// Joins a group call
  JoinGroupCall(
      {required this.groupCallId,
      this.payload,
      required this.source,
      required this.isMuted,
      this.extra});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [payload] Group join payload, received from tgcalls. Use null to cancel previous joinGroupCall request
  GroupCallPayload? payload;

  /// [source] Caller synchronization source identifier; received from tgcalls
  int source;

  /// [isMuted] True, if the user's microphone is muted
  bool isMuted;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory JoinGroupCall.fromJson(Map<String, dynamic> json) {
    return JoinGroupCall(
      groupCallId: json['group_call_id'] ?? 0,
      payload:
          GroupCallPayload.fromJson(json['payload'] ?? <String, dynamic>{}),
      source: json['source'] ?? 0,
      isMuted: json['is_muted'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "payload": this.payload == null ? null : this.payload!.toJson(),
      "source": this.source,
      "is_muted": this.isMuted,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'joinGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
