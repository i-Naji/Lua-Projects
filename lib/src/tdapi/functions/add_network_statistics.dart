part of '../tdapi.dart';

class AddNetworkStatistics extends TdFunction {
  /// Adds the specified data to data usage statistics. Can be called before authorization
  AddNetworkStatistics({required this.entry, this.extra});

  /// [entry] The network statistics entry with the data to be added to statistics
  NetworkStatisticsEntry entry;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddNetworkStatistics.fromJson(Map<String, dynamic> json) {
    return AddNetworkStatistics(
      entry:
          NetworkStatisticsEntry.fromJson(json['entry'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "entry": this.entry.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
