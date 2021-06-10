part of '../tdapi.dart';

class InputChatPhoto extends TdObject {
  /// Describes a photo to be set as a user profile or chat photo
  InputChatPhoto();

  /// a InputChatPhoto return type can be :
  /// * InputChatPhotoPrevious
  /// * InputChatPhotoStatic
  /// * InputChatPhotoAnimation
  factory InputChatPhoto.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputChatPhotoPrevious.CONSTRUCTOR:
        return InputChatPhotoPrevious.fromJson(json);
      case InputChatPhotoStatic.CONSTRUCTOR:
        return InputChatPhotoStatic.fromJson(json);
      case InputChatPhotoAnimation.CONSTRUCTOR:
        return InputChatPhotoAnimation.fromJson(json);
      default:
        return InputChatPhoto();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputChatPhotoPrevious extends InputChatPhoto {
  /// A previously used profile photo of the current user
  InputChatPhotoPrevious({required this.chatPhotoId});

  /// [chatPhotoId] Identifier of the profile photo to reuse
  int chatPhotoId;

  /// Parse from a json
  factory InputChatPhotoPrevious.fromJson(Map<String, dynamic> json) {
    return InputChatPhotoPrevious(
      chatPhotoId: int.tryParse(json['chat_photo_id'] ?? "") ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_photo_id": this.chatPhotoId,
    };
  }

  static const CONSTRUCTOR = 'inputChatPhotoPrevious';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputChatPhotoStatic extends InputChatPhoto {
  /// A static photo in JPEG format
  InputChatPhotoStatic({required this.photo});

  /// [photo] Photo to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  InputFile photo;

  /// Parse from a json
  factory InputChatPhotoStatic.fromJson(Map<String, dynamic> json) {
    return InputChatPhotoStatic(
      photo: InputFile.fromJson(json['photo'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputChatPhotoStatic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputChatPhotoAnimation extends InputChatPhoto {
  /// An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 800 and be at most 2MB in size
  InputChatPhotoAnimation(
      {required this.animation, required this.mainFrameTimestamp});

  /// [animation] Animation to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  InputFile animation;

  /// [mainFrameTimestamp] Timestamp of the frame, which will be used as static chat photo
  double mainFrameTimestamp;

  /// Parse from a json
  factory InputChatPhotoAnimation.fromJson(Map<String, dynamic> json) {
    return InputChatPhotoAnimation(
      animation: InputFile.fromJson(json['animation'] ?? <String, dynamic>{}),
      mainFrameTimestamp: json['main_frame_timestamp'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "main_frame_timestamp": this.mainFrameTimestamp,
    };
  }

  static const CONSTRUCTOR = 'inputChatPhotoAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
