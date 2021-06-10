part of '../tdapi.dart';

class Audio extends TdObject {
  /// Describes an audio file. Audio is usually in MP3 or M4A format
  Audio(
      {required this.duration,
      required this.title,
      required this.performer,
      required this.fileName,
      required this.mimeType,
      this.albumCoverMinithumbnail,
      this.albumCoverThumbnail,
      required this.audio});

  /// [duration] Duration of the audio, in seconds; as defined by the sender
  int duration;

  /// [title] Title of the audio; as defined by the sender
  String title;

  /// [performer] Performer of the audio; as defined by the sender
  String performer;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [mimeType] The MIME type of the file; as defined by the sender
  String mimeType;

  /// [albumCoverMinithumbnail] The minithumbnail of the album cover; may be null
  Minithumbnail? albumCoverMinithumbnail;

  /// [albumCoverThumbnail] The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail should be extracted from the downloaded file; may be null
  Thumbnail? albumCoverThumbnail;

  /// [audio] File containing the audio
  File audio;

  /// Parse from a json
  factory Audio.fromJson(Map<String, dynamic> json) {
    return Audio(
      duration: json['duration'] ?? 0,
      title: json['title'] ?? "",
      performer: json['performer'] ?? "",
      fileName: json['file_name'] ?? "",
      mimeType: json['mime_type'] ?? "",
      albumCoverMinithumbnail: Minithumbnail.fromJson(
          json['album_cover_minithumbnail'] ?? <String, dynamic>{}),
      albumCoverThumbnail: Thumbnail.fromJson(
          json['album_cover_thumbnail'] ?? <String, dynamic>{}),
      audio: File.fromJson(json['audio'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "title": this.title,
      "performer": this.performer,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "album_cover_minithumbnail": this.albumCoverMinithumbnail == null
          ? null
          : this.albumCoverMinithumbnail!.toJson(),
      "album_cover_thumbnail": this.albumCoverThumbnail == null
          ? null
          : this.albumCoverThumbnail!.toJson(),
      "audio": this.audio.toJson(),
    };
  }

  static const CONSTRUCTOR = 'audio';

  @override
  String getConstructor() => CONSTRUCTOR;
}
