part of '../tdapi.dart';

class ResetNetworkStatistics extends TdFunction {
  /// Resets all network data usage statistics to zero. Can be called before authorization
  ResetNetworkStatistics({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResetNetworkStatistics.fromJson(Map<String, dynamic> json) {
    return ResetNetworkStatistics(
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

  static const CONSTRUCTOR = 'resetNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
