part of '../tdapi.dart';

class GetBasicGroupFullInfo extends TdFunction {
  /// Returns full information about a basic group by its identifier
  GetBasicGroupFullInfo({required this.basicGroupId, this.extra});

  /// [basicGroupId] Basic group identifier
  int basicGroupId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetBasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    return GetBasicGroupFullInfo(
      basicGroupId: json['basic_group_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBasicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
