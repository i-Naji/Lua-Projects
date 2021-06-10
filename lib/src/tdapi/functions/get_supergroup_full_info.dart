part of '../tdapi.dart';

class GetSupergroupFullInfo extends TdFunction {
  /// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
  GetSupergroupFullInfo({required this.supergroupId, this.extra});

  /// [supergroupId] Supergroup or channel identifier
  int supergroupId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    return GetSupergroupFullInfo(
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

  static const CONSTRUCTOR = 'getSupergroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
