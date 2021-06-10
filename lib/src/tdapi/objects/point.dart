part of '../tdapi.dart';

class Point extends TdObject {
  /// A point on a Cartesian plane
  Point({required this.x, required this.y});

  /// [x] The point's first coordinate
  double x;

  /// [y] The point's second coordinate
  double y;

  /// Parse from a json
  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(
      x: json['x'] ?? 0,
      y: json['y'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x,
      "y": this.y,
    };
  }

  static const CONSTRUCTOR = 'point';

  @override
  String getConstructor() => CONSTRUCTOR;
}
