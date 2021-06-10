part of '../tdapi.dart';

class BackgroundType extends TdObject {
  /// Describes the type of a background
  BackgroundType();

  /// a BackgroundType return type can be :
  /// * BackgroundTypeWallpaper
  /// * BackgroundTypePattern
  /// * BackgroundTypeFill
  factory BackgroundType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case BackgroundTypeWallpaper.CONSTRUCTOR:
        return BackgroundTypeWallpaper.fromJson(json);
      case BackgroundTypePattern.CONSTRUCTOR:
        return BackgroundTypePattern.fromJson(json);
      case BackgroundTypeFill.CONSTRUCTOR:
        return BackgroundTypeFill.fromJson(json);
      default:
        return BackgroundType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'backgroundType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundTypeWallpaper extends BackgroundType {
  /// A wallpaper in JPEG format
  BackgroundTypeWallpaper({required this.isBlurred, required this.isMoving});

  /// [isBlurred] True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12
  bool isBlurred;

  /// [isMoving] True, if the background needs to be slightly moved when device is tilted
  bool isMoving;

  /// Parse from a json
  factory BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) {
    return BackgroundTypeWallpaper(
      isBlurred: json['is_blurred'] ?? false,
      isMoving: json['is_moving'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_blurred": this.isBlurred,
      "is_moving": this.isMoving,
    };
  }

  static const CONSTRUCTOR = 'backgroundTypeWallpaper';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundTypePattern extends BackgroundType {
  /// A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user
  BackgroundTypePattern(
      {required this.fill, required this.intensity, required this.isMoving});

  /// [fill] Description of the background fill
  BackgroundFill fill;

  /// [intensity] Intensity of the pattern when it is shown above the filled background, 0-100
  int intensity;

  /// [isMoving] True, if the background needs to be slightly moved when device is tilted
  bool isMoving;

  /// Parse from a json
  factory BackgroundTypePattern.fromJson(Map<String, dynamic> json) {
    return BackgroundTypePattern(
      fill: BackgroundFill.fromJson(json['fill'] ?? <String, dynamic>{}),
      intensity: json['intensity'] ?? 0,
      isMoving: json['is_moving'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "fill": this.fill.toJson(),
      "intensity": this.intensity,
      "is_moving": this.isMoving,
    };
  }

  static const CONSTRUCTOR = 'backgroundTypePattern';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundTypeFill extends BackgroundType {
  /// A filled background
  BackgroundTypeFill({required this.fill});

  /// [fill] Description of the background fill
  BackgroundFill fill;

  /// Parse from a json
  factory BackgroundTypeFill.fromJson(Map<String, dynamic> json) {
    return BackgroundTypeFill(
      fill: BackgroundFill.fromJson(json['fill'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "fill": this.fill.toJson(),
    };
  }

  static const CONSTRUCTOR = 'backgroundTypeFill';

  @override
  String getConstructor() => CONSTRUCTOR;
}
