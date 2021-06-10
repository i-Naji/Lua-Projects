part of '../tdapi.dart';

class UploadFile extends TdFunction {
  /// Asynchronously uploads a file to the cloud without sending it in a message. updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message
  UploadFile(
      {required this.file,
      required this.fileType,
      required this.priority,
      this.extra});

  /// [file] File to upload
  InputFile file;

  /// [fileType] File type
  FileType fileType;

  /// [priority] Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which uploadFile was called will be uploaded first
  int priority;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory UploadFile.fromJson(Map<String, dynamic> json) {
    return UploadFile(
      file: InputFile.fromJson(json['file'] ?? <String, dynamic>{}),
      fileType: FileType.fromJson(json['file_type'] ?? <String, dynamic>{}),
      priority: json['priority'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": this.file.toJson(),
      "file_type": this.fileType.toJson(),
      "priority": this.priority,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'uploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
