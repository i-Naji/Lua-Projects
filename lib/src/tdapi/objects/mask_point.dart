part of '../tdapi.dart';

class MaskPoint extends TdObject {
  /// Part of the face, relative to which a mask should be placed
  MaskPoint();

  /// a MaskPoint return type can be :
  /// * MaskPointForehead
  /// * MaskPointEyes
  /// * MaskPointMouth
  /// * MaskPointChin
  factory MaskPoint.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MaskPointForehead.CONSTRUCTOR:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.CONSTRUCTOR:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.CONSTRUCTOR:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.CONSTRUCTOR:
        return MaskPointChin.fromJson(json);
      default:
        return MaskPoint();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'maskPoint';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointForehead extends MaskPoint {
  /// A mask should be placed relatively to the forehead
  MaskPointForehead();

  /// Parse from a json
  factory MaskPointForehead.fromJson(Map<String, dynamic> json) {
    return MaskPointForehead();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'maskPointForehead';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointEyes extends MaskPoint {
  /// A mask should be placed relatively to the eyes
  MaskPointEyes();

  /// Parse from a json
  factory MaskPointEyes.fromJson(Map<String, dynamic> json) {
    return MaskPointEyes();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'maskPointEyes';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointMouth extends MaskPoint {
  /// A mask should be placed relatively to the mouth
  MaskPointMouth();

  /// Parse from a json
  factory MaskPointMouth.fromJson(Map<String, dynamic> json) {
    return MaskPointMouth();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'maskPointMouth';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointChin extends MaskPoint {
  /// A mask should be placed relatively to the chin
  MaskPointChin();

  /// Parse from a json
  factory MaskPointChin.fromJson(Map<String, dynamic> json) {
    return MaskPointChin();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'maskPointChin';

  @override
  String getConstructor() => CONSTRUCTOR;
}
