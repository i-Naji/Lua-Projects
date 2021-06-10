part of '../tdapi.dart';

class Document extends TdObject {
  /// Describes a document of any type
  Document(
      {required this.fileName,
      required this.mimeType,
      this.minithumbnail,
      this.thumbnail,
      required this.document});

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  String mimeType;

  /// [minithumbnail] Document minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null
  Thumbnail? thumbnail;

  /// [document] File containing the document
  File document;

  /// Parse from a json
  factory Document.fromJson(Map<String, dynamic> json) {
    return Document(
      fileName: json['file_name'] ?? "",
      mimeType: json['mime_type'] ?? "",
      minithumbnail:
          Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{}),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      document: File.fromJson(json['document'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
      "document": this.document.toJson(),
    };
  }

  static const CONSTRUCTOR = 'document';

  @override
  String getConstructor() => CONSTRUCTOR;
}
