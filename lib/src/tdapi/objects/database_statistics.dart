part of '../tdapi.dart';

class DatabaseStatistics extends TdObject {
  /// Contains database statistics
  DatabaseStatistics({required this.statistics, this.extra});

  /// [statistics] Database statistics in an unspecified human-readable format
  String statistics;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory DatabaseStatistics.fromJson(Map<String, dynamic> json) {
    return DatabaseStatistics(
      statistics: json['statistics'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "statistics": this.statistics,
    };
  }

  static const CONSTRUCTOR = 'databaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
