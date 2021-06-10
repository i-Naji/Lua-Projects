part of '../tdapi.dart';

class ThumbnailFormat extends TdObject {
  /// Describes format of the thumbnail
  ThumbnailFormat();

  /// a ThumbnailFormat return type can be :
  /// * ThumbnailFormatJpeg
  /// * ThumbnailFormatPng
  /// * ThumbnailFormatWebp
  /// * ThumbnailFormatGif
  /// * ThumbnailFormatTgs
  /// * ThumbnailFormatMpeg4
  factory ThumbnailFormat.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ThumbnailFormatJpeg.CONSTRUCTOR:
        return ThumbnailFormatJpeg.fromJson(json);
      case ThumbnailFormatPng.CONSTRUCTOR:
        return ThumbnailFormatPng.fromJson(json);
      case ThumbnailFormatWebp.CONSTRUCTOR:
        return ThumbnailFormatWebp.fromJson(json);
      case ThumbnailFormatGif.CONSTRUCTOR:
        return ThumbnailFormatGif.fromJson(json);
      case ThumbnailFormatTgs.CONSTRUCTOR:
        return ThumbnailFormatTgs.fromJson(json);
      case ThumbnailFormatMpeg4.CONSTRUCTOR:
        return ThumbnailFormatMpeg4.fromJson(json);
      default:
        return ThumbnailFormat();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'thumbnailFormat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatJpeg extends ThumbnailFormat {
  /// The thumbnail is in JPEG format
  ThumbnailFormatJpeg();

  /// Parse from a json
  factory ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json) {
    return ThumbnailFormatJpeg();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'thumbnailFormatJpeg';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatPng extends ThumbnailFormat {
  /// The thumbnail is in PNG format. It will be used only for background patterns
  ThumbnailFormatPng();

  /// Parse from a json
  factory ThumbnailFormatPng.fromJson(Map<String, dynamic> json) {
    return ThumbnailFormatPng();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'thumbnailFormatPng';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatWebp extends ThumbnailFormat {
  /// The thumbnail is in WEBP format. It will be used only for some stickers
  ThumbnailFormatWebp();

  /// Parse from a json
  factory ThumbnailFormatWebp.fromJson(Map<String, dynamic> json) {
    return ThumbnailFormatWebp();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'thumbnailFormatWebp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatGif extends ThumbnailFormat {
  /// The thumbnail is in static GIF format. It will be used only for some bot inline results
  ThumbnailFormatGif();

  /// Parse from a json
  factory ThumbnailFormatGif.fromJson(Map<String, dynamic> json) {
    return ThumbnailFormatGif();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'thumbnailFormatGif';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatTgs extends ThumbnailFormat {
  /// The thumbnail is in TGS format. It will be used only for animated sticker sets
  ThumbnailFormatTgs();

  /// Parse from a json
  factory ThumbnailFormatTgs.fromJson(Map<String, dynamic> json) {
    return ThumbnailFormatTgs();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'thumbnailFormatTgs';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
  ThumbnailFormatMpeg4();

  /// Parse from a json
  factory ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json) {
    return ThumbnailFormatMpeg4();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'thumbnailFormatMpeg4';

  @override
  String getConstructor() => CONSTRUCTOR;
}
