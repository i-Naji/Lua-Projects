part of '../tdapi.dart';

class GetSupergroupMembers extends TdFunction {
  /// Returns information about members or banned users in a supergroup or channel. Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
  GetSupergroupMembers(
      {required this.supergroupId,
      required this.filter,
      required this.offset,
      required this.limit,
      this.extra});

  /// [supergroupId] Identifier of the supergroup or channel
  int supergroupId;

  /// [filter] The type of users to return. By default, supergroupMembersFilterRecent
  SupergroupMembersFilter filter;

  /// [offset] Number of users to skip
  int offset;

  /// [limit] The maximum number of users be returned; up to 200
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSupergroupMembers.fromJson(Map<String, dynamic> json) {
    return GetSupergroupMembers(
      supergroupId: json['supergroup_id'] ?? 0,
      filter: SupergroupMembersFilter.fromJson(
          json['filter'] ?? <String, dynamic>{}),
      offset: json['offset'] ?? 0,
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "filter": this.filter.toJson(),
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSupergroupMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
