part of '../tdapi.dart';

class InlineQueryResult extends TdObject {
  /// Represents a single result of an inline query
  InlineQueryResult();

  /// a InlineQueryResult return type can be :
  /// * InlineQueryResultArticle
  /// * InlineQueryResultContact
  /// * InlineQueryResultLocation
  /// * InlineQueryResultVenue
  /// * InlineQueryResultGame
  /// * InlineQueryResultAnimation
  /// * InlineQueryResultAudio
  /// * InlineQueryResultDocument
  /// * InlineQueryResultPhoto
  /// * InlineQueryResultSticker
  /// * InlineQueryResultVideo
  /// * InlineQueryResultVoiceNote
  factory InlineQueryResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InlineQueryResultArticle.CONSTRUCTOR:
        return InlineQueryResultArticle.fromJson(json);
      case InlineQueryResultContact.CONSTRUCTOR:
        return InlineQueryResultContact.fromJson(json);
      case InlineQueryResultLocation.CONSTRUCTOR:
        return InlineQueryResultLocation.fromJson(json);
      case InlineQueryResultVenue.CONSTRUCTOR:
        return InlineQueryResultVenue.fromJson(json);
      case InlineQueryResultGame.CONSTRUCTOR:
        return InlineQueryResultGame.fromJson(json);
      case InlineQueryResultAnimation.CONSTRUCTOR:
        return InlineQueryResultAnimation.fromJson(json);
      case InlineQueryResultAudio.CONSTRUCTOR:
        return InlineQueryResultAudio.fromJson(json);
      case InlineQueryResultDocument.CONSTRUCTOR:
        return InlineQueryResultDocument.fromJson(json);
      case InlineQueryResultPhoto.CONSTRUCTOR:
        return InlineQueryResultPhoto.fromJson(json);
      case InlineQueryResultSticker.CONSTRUCTOR:
        return InlineQueryResultSticker.fromJson(json);
      case InlineQueryResultVideo.CONSTRUCTOR:
        return InlineQueryResultVideo.fromJson(json);
      case InlineQueryResultVoiceNote.CONSTRUCTOR:
        return InlineQueryResultVoiceNote.fromJson(json);
      default:
        return InlineQueryResult();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inlineQueryResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultArticle extends InlineQueryResult {
  /// Represents a link to an article or web page
  InlineQueryResultArticle(
      {required this.id,
      required this.url,
      required this.hideUrl,
      required this.title,
      required this.description,
      this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [url] URL of the result, if it exists
  String url;

  /// [hideUrl] True, if the URL must be not shown
  bool hideUrl;

  /// [title] Title of the result
  String title;

  /// [description] A short description of the result
  String description;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail? thumbnail;

  /// Parse from a json
  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultArticle(
      id: json['id'] ?? "",
      url: json['url'] ?? "",
      hideUrl: json['hide_url'] ?? false,
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "url": this.url,
      "hide_url": this.hideUrl,
      "title": this.title,
      "description": this.description,
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultArticle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultContact extends InlineQueryResult {
  /// Represents a user contact
  InlineQueryResultContact(
      {required this.id, required this.contact, this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [contact] A user contact
  Contact contact;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail? thumbnail;

  /// Parse from a json
  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultContact(
      id: json['id'] ?? "",
      contact: Contact.fromJson(json['contact'] ?? <String, dynamic>{}),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "contact": this.contact.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultLocation extends InlineQueryResult {
  /// Represents a point on the map
  InlineQueryResultLocation(
      {required this.id,
      required this.location,
      required this.title,
      this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [location] Location result
  Location location;

  /// [title] Title of the result
  String title;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail? thumbnail;

  /// Parse from a json
  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultLocation(
      id: json['id'] ?? "",
      location: Location.fromJson(json['location'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "location": this.location.toJson(),
      "title": this.title,
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVenue extends InlineQueryResult {
  /// Represents information about a venue
  InlineQueryResultVenue(
      {required this.id, required this.venue, this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [venue] Venue result
  Venue venue;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail? thumbnail;

  /// Parse from a json
  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultVenue(
      id: json['id'] ?? "",
      venue: Venue.fromJson(json['venue'] ?? <String, dynamic>{}),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "venue": this.venue.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultGame extends InlineQueryResult {
  /// Represents information about a game
  InlineQueryResultGame({required this.id, required this.game});

  /// [id] Unique identifier of the query result
  String id;

  /// [game] Game result
  Game game;

  /// Parse from a json
  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultGame(
      id: json['id'] ?? "",
      game: Game.fromJson(json['game'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "game": this.game.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultAnimation extends InlineQueryResult {
  /// Represents an animation file
  InlineQueryResultAnimation(
      {required this.id, required this.animation, required this.title});

  /// [id] Unique identifier of the query result
  String id;

  /// [animation] Animation file
  Animation animation;

  /// [title] Animation title
  String title;

  /// Parse from a json
  factory InlineQueryResultAnimation.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultAnimation(
      id: json['id'] ?? "",
      animation: Animation.fromJson(json['animation'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "animation": this.animation.toJson(),
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultAudio extends InlineQueryResult {
  /// Represents an audio file
  InlineQueryResultAudio({required this.id, required this.audio});

  /// [id] Unique identifier of the query result
  String id;

  /// [audio] Audio file
  Audio audio;

  /// Parse from a json
  factory InlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultAudio(
      id: json['id'] ?? "",
      audio: Audio.fromJson(json['audio'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "audio": this.audio.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultDocument extends InlineQueryResult {
  /// Represents a document
  InlineQueryResultDocument(
      {required this.id,
      required this.document,
      required this.title,
      required this.description});

  /// [id] Unique identifier of the query result
  String id;

  /// [document] Document
  Document document;

  /// [title] Document title
  String title;

  /// [description] Document description
  String description;

  /// Parse from a json
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultDocument(
      id: json['id'] ?? "",
      document: Document.fromJson(json['document'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      description: json['description'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "document": this.document.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultPhoto extends InlineQueryResult {
  /// Represents a photo
  InlineQueryResultPhoto(
      {required this.id,
      required this.photo,
      required this.title,
      required this.description});

  /// [id] Unique identifier of the query result
  String id;

  /// [photo] Photo
  Photo photo;

  /// [title] Title of the result, if known
  String title;

  /// [description] A short description of the result, if known
  String description;

  /// Parse from a json
  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultPhoto(
      id: json['id'] ?? "",
      photo: Photo.fromJson(json['photo'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      description: json['description'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "photo": this.photo.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultSticker extends InlineQueryResult {
  /// Represents a sticker
  InlineQueryResultSticker({required this.id, required this.sticker});

  /// [id] Unique identifier of the query result
  String id;

  /// [sticker] Sticker
  Sticker sticker;

  /// Parse from a json
  factory InlineQueryResultSticker.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultSticker(
      id: json['id'] ?? "",
      sticker: Sticker.fromJson(json['sticker'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sticker": this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVideo extends InlineQueryResult {
  /// Represents a video
  InlineQueryResultVideo(
      {required this.id,
      required this.video,
      required this.title,
      required this.description});

  /// [id] Unique identifier of the query result
  String id;

  /// [video] Video
  Video video;

  /// [title] Title of the video
  String title;

  /// [description] Description of the video
  String description;

  /// Parse from a json
  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultVideo(
      id: json['id'] ?? "",
      video: Video.fromJson(json['video'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      description: json['description'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "video": this.video.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVoiceNote extends InlineQueryResult {
  /// Represents a voice note
  InlineQueryResultVoiceNote(
      {required this.id, required this.voiceNote, required this.title});

  /// [id] Unique identifier of the query result
  String id;

  /// [voiceNote] Voice note
  VoiceNote voiceNote;

  /// [title] Title of the voice note
  String title;

  /// Parse from a json
  factory InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultVoiceNote(
      id: json['id'] ?? "",
      voiceNote: VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "voice_note": this.voiceNote.toJson(),
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
