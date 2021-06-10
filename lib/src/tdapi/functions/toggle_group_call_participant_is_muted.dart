part of '../tdapi.dart';

class ToggleGroupCallParticipantIsMuted extends TdFunction {
  /// Toggles whether a group call participant is muted, unmuted, or allowed to unmute themself
  ToggleGroupCallParticipantIsMuted(
      {required this.groupCallId,
      required this.userId,
      required this.isMuted,
      this.extra});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [userId] User identifier
  int userId;

  /// [isMuted] Pass true if the user must be muted and false otherwise
  bool isMuted;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ToggleGroupCallParticipantIsMuted.fromJson(
      Map<String, dynamic> json) {
    return ToggleGroupCallParticipantIsMuted(
      groupCallId: json['group_call_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      isMuted: json['is_muted'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "user_id": this.userId,
      "is_muted": this.isMuted,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleGroupCallParticipantIsMuted';

  @override
  String getConstructor() => CONSTRUCTOR;
}
