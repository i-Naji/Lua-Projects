part of '../tdapi.dart';

class NetworkStatistics extends TdObject {
  /// A full list of available network statistic entries
  NetworkStatistics(
      {required this.sinceDate, required this.entries, this.extra});

  /// [sinceDate] Point in time (Unix timestamp) from which the statistics are collected
  int sinceDate;

  /// [entries] Network statistics entries
  List<NetworkStatisticsEntry> entries;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory NetworkStatistics.fromJson(Map<String, dynamic> json) {
    return NetworkStatistics(
      sinceDate: json['since_date'] ?? 0,
      entries: List<NetworkStatisticsEntry>.from((json['entries'] ?? [])
          .map((item) =>
              NetworkStatisticsEntry.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "since_date": this.sinceDate,
      "entries": this.entries.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'networkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
