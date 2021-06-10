part of '../tdapi.dart';

class MaskPosition extends TdObject {
  /// Position on a photo where a mask should be placed
  MaskPosition(
      {required this.point,
      required this.xShift,
      required this.yShift,
      required this.scale});

  /// [point] Part of the face, relative to which the mask should be placed
  MaskPoint point;

  /// [xShift] Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position)
  double xShift;

  /// [yShift] Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position)
  double yShift;

  /// [scale] Mask scaling coefficient. (For example, 2.0 means a doubled size)
  double scale;

  /// Parse from a json
  factory MaskPosition.fromJson(Map<String, dynamic> json) {
    return MaskPosition(
      point: MaskPoint.fromJson(json['point'] ?? <String, dynamic>{}),
      xShift: json['x_shift'] ?? 0,
      yShift: json['y_shift'] ?? 0,
      scale: json['scale'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "point": this.point.toJson(),
      "x_shift": this.xShift,
      "y_shift": this.yShift,
      "scale": this.scale,
    };
  }

  static const CONSTRUCTOR = 'maskPosition';

  @override
  String getConstructor() => CONSTRUCTOR;
}
