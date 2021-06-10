part of '../tdapi.dart';

class Date extends TdObject {
  /// Represents a date according to the Gregorian calendar
  Date({required this.day, required this.month, required this.year});

  /// [day] Day of the month, 1-31
  int day;

  /// [month] Month, 1-12
  int month;

  /// [year] Year, 1-9999
  int year;

  /// Parse from a json
  factory Date.fromJson(Map<String, dynamic> json) {
    return Date(
      day: json['day'] ?? 0,
      month: json['month'] ?? 0,
      year: json['year'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "day": this.day,
      "month": this.month,
      "year": this.year,
    };
  }

  static const CONSTRUCTOR = 'date';

  @override
  String getConstructor() => CONSTRUCTOR;
}
