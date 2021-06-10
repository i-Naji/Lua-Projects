part of '../tdapi.dart';

class GroupCallParticipant extends TdObject {
  /// Represents a group call participant
  GroupCallParticipant(
      {required this.userId,
      required this.source,
      required this.isSpeaking,
      required this.canBeMuted,
      required this.canBeUnmuted,
      required this.isMuted,
      required this.canUnmuteSelf,
      required this.order});

  /// [userId] Identifier of the user
  int userId;

  /// [source] User's synchronization source
  int source;

  /// [isSpeaking] True, if the participant is speaking as set by setGroupCallParticipantIsSpeaking
  bool isSpeaking;

  /// [canBeMuted] True, if the current user can mute the participant
  bool canBeMuted;

  /// [canBeUnmuted] True, if the current user can allow the participant to unmute themself or unmute the participant (only for self)
  bool canBeUnmuted;

  /// [isMuted] True, if the participant is muted
  bool isMuted;

  /// [canUnmuteSelf] True, if the participant can unmute themself
  bool canUnmuteSelf;

  /// [order] User's order in the group call participant list. The bigger is order, the higher is user in the list. If order is 0, the user must be removed from the participant list
  int order;

  /// Parse from a json
  factory GroupCallParticipant.fromJson(Map<String, dynamic> json) {
    return GroupCallParticipant(
      userId: json['user_id'] ?? 0,
      source: json['source'] ?? 0,
      isSpeaking: json['is_speaking'] ?? false,
      canBeMuted: json['can_be_muted'] ?? false,
      canBeUnmuted: json['can_be_unmuted'] ?? false,
      isMuted: json['is_muted'] ?? false,
      canUnmuteSelf: json['can_unmute_self'] ?? false,
      order: int.tryParse(json['order'] ?? "") ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "source": this.source,
      "is_speaking": this.isSpeaking,
      "can_be_muted": this.canBeMuted,
      "can_be_unmuted": this.canBeUnmuted,
      "is_muted": this.isMuted,
      "can_unmute_self": this.canUnmuteSelf,
      "order": this.order,
    };
  }

  static const CONSTRUCTOR = 'groupCallParticipant';

  @override
  String getConstructor() => CONSTRUCTOR;
}
