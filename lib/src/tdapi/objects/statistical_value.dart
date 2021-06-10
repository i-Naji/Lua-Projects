part of '../tdapi.dart';

class StatisticalValue extends TdObject {
  /// A value with information about its recent changes
  StatisticalValue(
      {required this.value,
      required this.previousValue,
      required this.growthRatePercentage});

  /// [value] The current value
  double value;

  /// [previousValue] The value for the previous day
  double previousValue;

  /// [growthRatePercentage] The growth rate of the value, as a percentage
  double growthRatePercentage;

  /// Parse from a json
  factory StatisticalValue.fromJson(Map<String, dynamic> json) {
    return StatisticalValue(
      value: json['value'] ?? 0,
      previousValue: json['previous_value'] ?? 0,
      growthRatePercentage: json['growth_rate_percentage'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value,
      "previous_value": this.previousValue,
      "growth_rate_percentage": this.growthRatePercentage,
    };
  }

  static const CONSTRUCTOR = 'statisticalValue';

  @override
  String getConstructor() => CONSTRUCTOR;
}
