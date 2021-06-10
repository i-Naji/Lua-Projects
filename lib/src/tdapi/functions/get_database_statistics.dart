part of '../tdapi.dart';

class GetDatabaseStatistics extends TdFunction {
  /// Returns database statistics
  GetDatabaseStatistics({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetDatabaseStatistics.fromJson(Map<String, dynamic> json) {
    return GetDatabaseStatistics(
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

  static const CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
