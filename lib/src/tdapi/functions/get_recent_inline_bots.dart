part of '../tdapi.dart';

class GetRecentInlineBots extends TdFunction {
  /// Returns up to 20 recently used inline bots in the order of their last usage
  GetRecentInlineBots({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetRecentInlineBots.fromJson(Map<String, dynamic> json) {
    return GetRecentInlineBots(
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

  static const CONSTRUCTOR = 'getRecentInlineBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}
