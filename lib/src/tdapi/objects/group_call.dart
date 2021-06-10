part of '../tdapi.dart';

class GroupCall extends TdObject {
  /// Describes a group call
  GroupCall(
      {required this.id,
      required this.isActive,
      required this.isJoined,
      required this.needRejoin,
      required this.canUnmuteSelf,
      required this.canBeManaged,
      required this.participantCount,
      required this.loadedAllParticipants,
      required this.recentSpeakers,
      required this.muteNewParticipants,
      required this.allowedChangeMuteNewParticipants,
      required this.duration,
      this.extra});

  /// [id] Group call identifier
  int id;

  /// [isActive] True, if the call is active
  bool isActive;

  /// [isJoined] True, if the call is joined
  bool isJoined;

  /// [needRejoin] True, if user was kicked from the call because of network loss and the call needs to be rejoined
  bool needRejoin;

  /// [canUnmuteSelf] True, if the current user can unmute themself
  bool canUnmuteSelf;

  /// [canBeManaged] True, if the current user can manage the group call
  bool canBeManaged;

  /// [participantCount] Number of participants in the group call
  int participantCount;

  /// [loadedAllParticipants] True, if all group call participants are loaded
  bool loadedAllParticipants;

  /// [recentSpeakers] Recently speaking users in the group call
  List<GroupCallRecentSpeaker> recentSpeakers;

  /// [muteNewParticipants] True, if only group call administrators can unmute new participants
  bool muteNewParticipants;

  /// [allowedChangeMuteNewParticipants] True, if group call administrators can enable or disable mute_new_participants setting
  bool allowedChangeMuteNewParticipants;

  /// [duration] Call duration; for ended calls only
  int duration;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory GroupCall.fromJson(Map<String, dynamic> json) {
    return GroupCall(
      id: json['id'] ?? 0,
      isActive: json['is_active'] ?? false,
      isJoined: json['is_joined'] ?? false,
      needRejoin: json['need_rejoin'] ?? false,
      canUnmuteSelf: json['can_unmute_self'] ?? false,
      canBeManaged: json['can_be_managed'] ?? false,
      participantCount: json['participant_count'] ?? 0,
      loadedAllParticipants: json['loaded_all_participants'] ?? false,
      recentSpeakers: List<GroupCallRecentSpeaker>.from(
          (json['recent_speakers'] ?? [])
              .map((item) =>
                  GroupCallRecentSpeaker.fromJson(item ?? <String, dynamic>{}))
              .toList()),
      muteNewParticipants: json['mute_new_participants'] ?? false,
      allowedChangeMuteNewParticipants:
          json['allowed_change_mute_new_participants'] ?? false,
      duration: json['duration'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "is_active": this.isActive,
      "is_joined": this.isJoined,
      "need_rejoin": this.needRejoin,
      "can_unmute_self": this.canUnmuteSelf,
      "can_be_managed": this.canBeManaged,
      "participant_count": this.participantCount,
      "loaded_all_participants": this.loadedAllParticipants,
      "recent_speakers": this.recentSpeakers.map((i) => i.toJson()).toList(),
      "mute_new_participants": this.muteNewParticipants,
      "allowed_change_mute_new_participants":
          this.allowedChangeMuteNewParticipants,
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'groupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
