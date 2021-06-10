part of '../tdapi.dart';

class Count extends TdObject {
  /// Contains a counter
  Count({required this.count, this.extra});

  /// [count] Count
  int count;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Count.fromJson(Map<String, dynamic> json) {
    return Count(
      count: json['count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "count": this.count,
    };
  }

  static const CONSTRUCTOR = 'count';

  @override
  String getConstructor() => CONSTRUCTOR;
}
