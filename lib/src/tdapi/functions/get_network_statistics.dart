part of '../tdapi.dart';

class GetNetworkStatistics extends TdFunction {
  /// Returns network data usage statistics. Can be called before authorization
  GetNetworkStatistics({required this.onlyCurrent, this.extra});

  /// [onlyCurrent] If true, returns only data for the current library launch
  bool onlyCurrent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetNetworkStatistics.fromJson(Map<String, dynamic> json) {
    return GetNetworkStatistics(
      onlyCurrent: json['only_current'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "only_current": this.onlyCurrent,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
