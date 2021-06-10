part of '../tdapi.dart';

class InviteGroupCallParticipants extends TdFunction {
  /// Invites users to a group call. Sends a service message of type messageInviteToGroupCall for voice chats
  InviteGroupCallParticipants(
      {required this.groupCallId, required this.userIds, this.extra});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  List<int> userIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory InviteGroupCallParticipants.fromJson(Map<String, dynamic> json) {
    return InviteGroupCallParticipants(
      groupCallId: json['group_call_id'] ?? 0,
      userIds: List<int>.from(
          (json['user_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "user_ids": this.userIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'inviteGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}
