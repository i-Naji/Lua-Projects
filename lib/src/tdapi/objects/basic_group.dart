part of '../tdapi.dart';

class BasicGroup extends TdObject {
  /// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users)
  BasicGroup(
      {required this.id,
      required this.memberCount,
      required this.status,
      required this.isActive,
      required this.upgradedToSupergroupId,
      this.extra});

  /// [id] Group identifier
  int id;

  /// [memberCount] Number of members in the group
  int memberCount;

  /// [status] Status of the current user in the group
  ChatMemberStatus status;

  /// [isActive] True, if the group is active
  bool isActive;

  /// [upgradedToSupergroupId] Identifier of the supergroup to which this group was upgraded; 0 if none
  int upgradedToSupergroupId;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory BasicGroup.fromJson(Map<String, dynamic> json) {
    return BasicGroup(
      id: json['id'] ?? 0,
      memberCount: json['member_count'] ?? 0,
      status: ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{}),
      isActive: json['is_active'] ?? false,
      upgradedToSupergroupId: json['upgraded_to_supergroup_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "member_count": this.memberCount,
      "status": this.status.toJson(),
      "is_active": this.isActive,
      "upgraded_to_supergroup_id": this.upgradedToSupergroupId,
    };
  }

  static const CONSTRUCTOR = 'basicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
