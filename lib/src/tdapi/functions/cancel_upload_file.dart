part of '../tdapi.dart';

class CancelUploadFile extends TdFunction {
  /// Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined
  CancelUploadFile({required this.fileId, this.extra});

  /// [fileId] Identifier of the file to stop uploading
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CancelUploadFile.fromJson(Map<String, dynamic> json) {
    return CancelUploadFile(
      fileId: json['file_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'cancelUploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
