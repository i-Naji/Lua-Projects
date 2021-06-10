part of '../tdapi.dart';

class DateRange extends TdObject {
  /// Represents a date range
  DateRange({required this.startDate, required this.endDate});

  /// [startDate] Point in time (Unix timestamp) at which the date range begins
  int startDate;

  /// [endDate] Point in time (Unix timestamp) at which the date range ends
  int endDate;

  /// Parse from a json
  factory DateRange.fromJson(Map<String, dynamic> json) {
    return DateRange(
      startDate: json['start_date'] ?? 0,
      endDate: json['end_date'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "start_date": this.startDate,
      "end_date": this.endDate,
    };
  }

  static const CONSTRUCTOR = 'dateRange';

  @override
  String getConstructor() => CONSTRUCTOR;
}
