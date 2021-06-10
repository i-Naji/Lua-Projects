part of '../tdapi.dart';

class GetRecommendedChatFilters extends TdFunction {
  /// Returns recommended chat filters for the current user
  GetRecommendedChatFilters({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetRecommendedChatFilters.fromJson(Map<String, dynamic> json) {
    return GetRecommendedChatFilters(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRecommendedChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
