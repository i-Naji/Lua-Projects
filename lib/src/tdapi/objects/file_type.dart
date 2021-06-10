part of '../tdapi.dart';

class FileType extends TdObject {
  /// Represents the type of a file
  FileType();

  /// a FileType return type can be :
  /// * FileTypeNone
  /// * FileTypeAnimation
  /// * FileTypeAudio
  /// * FileTypeDocument
  /// * FileTypePhoto
  /// * FileTypeProfilePhoto
  /// * FileTypeSecret
  /// * FileTypeSecretThumbnail
  /// * FileTypeSecure
  /// * FileTypeSticker
  /// * FileTypeThumbnail
  /// * FileTypeUnknown
  /// * FileTypeVideo
  /// * FileTypeVideoNote
  /// * FileTypeVoiceNote
  /// * FileTypeWallpaper
  factory FileType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case FileTypeNone.CONSTRUCTOR:
        return FileTypeNone.fromJson(json);
      case FileTypeAnimation.CONSTRUCTOR:
        return FileTypeAnimation.fromJson(json);
      case FileTypeAudio.CONSTRUCTOR:
        return FileTypeAudio.fromJson(json);
      case FileTypeDocument.CONSTRUCTOR:
        return FileTypeDocument.fromJson(json);
      case FileTypePhoto.CONSTRUCTOR:
        return FileTypePhoto.fromJson(json);
      case FileTypeProfilePhoto.CONSTRUCTOR:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeSecret.CONSTRUCTOR:
        return FileTypeSecret.fromJson(json);
      case FileTypeSecretThumbnail.CONSTRUCTOR:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeSecure.CONSTRUCTOR:
        return FileTypeSecure.fromJson(json);
      case FileTypeSticker.CONSTRUCTOR:
        return FileTypeSticker.fromJson(json);
      case FileTypeThumbnail.CONSTRUCTOR:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeUnknown.CONSTRUCTOR:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVideo.CONSTRUCTOR:
        return FileTypeVideo.fromJson(json);
      case FileTypeVideoNote.CONSTRUCTOR:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeVoiceNote.CONSTRUCTOR:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.CONSTRUCTOR:
        return FileTypeWallpaper.fromJson(json);
      default:
        return FileType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'fileType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeNone extends FileType {
  /// The data is not a file
  FileTypeNone();

  /// Parse from a json
  factory FileTypeNone.fromJson(Map<String, dynamic> json) {
    return FileTypeNone();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeNone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeAnimation extends FileType {
  /// The file is an animation
  FileTypeAnimation();

  /// Parse from a json
  factory FileTypeAnimation.fromJson(Map<String, dynamic> json) {
    return FileTypeAnimation();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeAudio extends FileType {
  /// The file is an audio file
  FileTypeAudio();

  /// Parse from a json
  factory FileTypeAudio.fromJson(Map<String, dynamic> json) {
    return FileTypeAudio();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeDocument extends FileType {
  /// The file is a document
  FileTypeDocument();

  /// Parse from a json
  factory FileTypeDocument.fromJson(Map<String, dynamic> json) {
    return FileTypeDocument();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypePhoto extends FileType {
  /// The file is a photo
  FileTypePhoto();

  /// Parse from a json
  factory FileTypePhoto.fromJson(Map<String, dynamic> json) {
    return FileTypePhoto();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeProfilePhoto extends FileType {
  /// The file is a profile photo
  FileTypeProfilePhoto();

  /// Parse from a json
  factory FileTypeProfilePhoto.fromJson(Map<String, dynamic> json) {
    return FileTypeProfilePhoto();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecret extends FileType {
  /// The file was sent to a secret chat (the file type is not known to the server)
  FileTypeSecret();

  /// Parse from a json
  factory FileTypeSecret.fromJson(Map<String, dynamic> json) {
    return FileTypeSecret();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeSecret';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecretThumbnail extends FileType {
  /// The file is a thumbnail of a file from a secret chat
  FileTypeSecretThumbnail();

  /// Parse from a json
  factory FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json) {
    return FileTypeSecretThumbnail();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeSecretThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecure extends FileType {
  /// The file is a file from Secure storage used for storing Telegram Passport files
  FileTypeSecure();

  /// Parse from a json
  factory FileTypeSecure.fromJson(Map<String, dynamic> json) {
    return FileTypeSecure();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeSecure';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSticker extends FileType {
  /// The file is a sticker
  FileTypeSticker();

  /// Parse from a json
  factory FileTypeSticker.fromJson(Map<String, dynamic> json) {
    return FileTypeSticker();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeThumbnail extends FileType {
  /// The file is a thumbnail of another file
  FileTypeThumbnail();

  /// Parse from a json
  factory FileTypeThumbnail.fromJson(Map<String, dynamic> json) {
    return FileTypeThumbnail();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeUnknown extends FileType {
  /// The file type is not yet known
  FileTypeUnknown();

  /// Parse from a json
  factory FileTypeUnknown.fromJson(Map<String, dynamic> json) {
    return FileTypeUnknown();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVideo extends FileType {
  /// The file is a video
  FileTypeVideo();

  /// Parse from a json
  factory FileTypeVideo.fromJson(Map<String, dynamic> json) {
    return FileTypeVideo();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVideoNote extends FileType {
  /// The file is a video note
  FileTypeVideoNote();

  /// Parse from a json
  factory FileTypeVideoNote.fromJson(Map<String, dynamic> json) {
    return FileTypeVideoNote();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVoiceNote extends FileType {
  /// The file is a voice note
  FileTypeVoiceNote();

  /// Parse from a json
  factory FileTypeVoiceNote.fromJson(Map<String, dynamic> json) {
    return FileTypeVoiceNote();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeWallpaper extends FileType {
  /// The file is a wallpaper or a background pattern
  FileTypeWallpaper();

  /// Parse from a json
  factory FileTypeWallpaper.fromJson(Map<String, dynamic> json) {
    return FileTypeWallpaper();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'fileTypeWallpaper';

  @override
  String getConstructor() => CONSTRUCTOR;
}
