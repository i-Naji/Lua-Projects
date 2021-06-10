part of '../tdapi.dart';

class SetGroupCallParticipantIsSpeaking extends TdFunction {
  /// Informs TDLib that a group call participant speaking state has changed
  SetGroupCallParticipantIsSpeaking(
      {required this.groupCallId,
      required this.source,
      required this.isSpeaking,
      this.extra});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [source] Group call participant's synchronization source identifier, or 0 for the current user
  int source;

  /// [isSpeaking] True, if the user is speaking
  bool isSpeaking;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetGroupCallParticipantIsSpeaking.fromJson(
      Map<String, dynamic> json) {
    return SetGroupCallParticipantIsSpeaking(
      groupCallId: json['group_call_id'] ?? 0,
      source: json['source'] ?? 0,
      isSpeaking: json['is_speaking'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "source": this.source,
      "is_speaking": this.isSpeaking,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setGroupCallParticipantIsSpeaking';

  @override
  String getConstructor() => CONSTRUCTOR;
}
