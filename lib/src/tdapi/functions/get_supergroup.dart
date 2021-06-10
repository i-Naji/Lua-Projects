part of '../tdapi.dart';

class GetSupergroup extends TdFunction {
  /// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
  GetSupergroup({required this.supergroupId, this.extra});

  /// [supergroupId] Supergroup or channel identifier
  int supergroupId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSupergroup.fromJson(Map<String, dynamic> json) {
    return GetSupergroup(
      supergroupId: json['supergroup_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
