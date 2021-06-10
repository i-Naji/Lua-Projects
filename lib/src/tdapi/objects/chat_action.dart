part of '../tdapi.dart';

class ChatAction extends TdObject {
  /// Describes the different types of activity in a chat
  ChatAction();

  /// a ChatAction return type can be :
  /// * ChatActionTyping
  /// * ChatActionRecordingVideo
  /// * ChatActionUploadingVideo
  /// * ChatActionRecordingVoiceNote
  /// * ChatActionUploadingVoiceNote
  /// * ChatActionUploadingPhoto
  /// * ChatActionUploadingDocument
  /// * ChatActionChoosingLocation
  /// * ChatActionChoosingContact
  /// * ChatActionStartPlayingGame
  /// * ChatActionRecordingVideoNote
  /// * ChatActionUploadingVideoNote
  /// * ChatActionCancel
  factory ChatAction.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatActionTyping.CONSTRUCTOR:
        return ChatActionTyping.fromJson(json);
      case ChatActionRecordingVideo.CONSTRUCTOR:
        return ChatActionRecordingVideo.fromJson(json);
      case ChatActionUploadingVideo.CONSTRUCTOR:
        return ChatActionUploadingVideo.fromJson(json);
      case ChatActionRecordingVoiceNote.CONSTRUCTOR:
        return ChatActionRecordingVoiceNote.fromJson(json);
      case ChatActionUploadingVoiceNote.CONSTRUCTOR:
        return ChatActionUploadingVoiceNote.fromJson(json);
      case ChatActionUploadingPhoto.CONSTRUCTOR:
        return ChatActionUploadingPhoto.fromJson(json);
      case ChatActionUploadingDocument.CONSTRUCTOR:
        return ChatActionUploadingDocument.fromJson(json);
      case ChatActionChoosingLocation.CONSTRUCTOR:
        return ChatActionChoosingLocation.fromJson(json);
      case ChatActionChoosingContact.CONSTRUCTOR:
        return ChatActionChoosingContact.fromJson(json);
      case ChatActionStartPlayingGame.CONSTRUCTOR:
        return ChatActionStartPlayingGame.fromJson(json);
      case ChatActionRecordingVideoNote.CONSTRUCTOR:
        return ChatActionRecordingVideoNote.fromJson(json);
      case ChatActionUploadingVideoNote.CONSTRUCTOR:
        return ChatActionUploadingVideoNote.fromJson(json);
      case ChatActionCancel.CONSTRUCTOR:
        return ChatActionCancel.fromJson(json);
      default:
        return ChatAction();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionTyping extends ChatAction {
  /// The user is typing a message
  ChatActionTyping();

  /// Parse from a json
  factory ChatActionTyping.fromJson(Map<String, dynamic> json) {
    return ChatActionTyping();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionTyping';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionRecordingVideo extends ChatAction {
  /// The user is recording a video
  ChatActionRecordingVideo();

  /// Parse from a json
  factory ChatActionRecordingVideo.fromJson(Map<String, dynamic> json) {
    return ChatActionRecordingVideo();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionRecordingVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingVideo extends ChatAction {
  /// The user is uploading a video
  ChatActionUploadingVideo({required this.progress});

  /// [progress] Upload progress, as a percentage
  int progress;

  /// Parse from a json
  factory ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) {
    return ChatActionUploadingVideo(
      progress: json['progress'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionRecordingVoiceNote extends ChatAction {
  /// The user is recording a voice note
  ChatActionRecordingVoiceNote();

  /// Parse from a json
  factory ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json) {
    return ChatActionRecordingVoiceNote();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionRecordingVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingVoiceNote extends ChatAction {
  /// The user is uploading a voice note
  ChatActionUploadingVoiceNote({required this.progress});

  /// [progress] Upload progress, as a percentage
  int progress;

  /// Parse from a json
  factory ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) {
    return ChatActionUploadingVoiceNote(
      progress: json['progress'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingPhoto extends ChatAction {
  /// The user is uploading a photo
  ChatActionUploadingPhoto({required this.progress});

  /// [progress] Upload progress, as a percentage
  int progress;

  /// Parse from a json
  factory ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) {
    return ChatActionUploadingPhoto(
      progress: json['progress'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingDocument extends ChatAction {
  /// The user is uploading a document
  ChatActionUploadingDocument({required this.progress});

  /// [progress] Upload progress, as a percentage
  int progress;

  /// Parse from a json
  factory ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) {
    return ChatActionUploadingDocument(
      progress: json['progress'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionChoosingLocation extends ChatAction {
  /// The user is picking a location or venue to send
  ChatActionChoosingLocation();

  /// Parse from a json
  factory ChatActionChoosingLocation.fromJson(Map<String, dynamic> json) {
    return ChatActionChoosingLocation();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionChoosingLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionChoosingContact extends ChatAction {
  /// The user is picking a contact to send
  ChatActionChoosingContact();

  /// Parse from a json
  factory ChatActionChoosingContact.fromJson(Map<String, dynamic> json) {
    return ChatActionChoosingContact();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionChoosingContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionStartPlayingGame extends ChatAction {
  /// The user has started to play a game
  ChatActionStartPlayingGame();

  /// Parse from a json
  factory ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json) {
    return ChatActionStartPlayingGame();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionStartPlayingGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionRecordingVideoNote extends ChatAction {
  /// The user is recording a video note
  ChatActionRecordingVideoNote();

  /// Parse from a json
  factory ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json) {
    return ChatActionRecordingVideoNote();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionRecordingVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingVideoNote extends ChatAction {
  /// The user is uploading a video note
  ChatActionUploadingVideoNote({required this.progress});

  /// [progress] Upload progress, as a percentage
  int progress;

  /// Parse from a json
  factory ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) {
    return ChatActionUploadingVideoNote(
      progress: json['progress'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionCancel extends ChatAction {
  /// The user has cancelled the previous action
  ChatActionCancel();

  /// Parse from a json
  factory ChatActionCancel.fromJson(Map<String, dynamic> json) {
    return ChatActionCancel();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionCancel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
