part of '../tdapi.dart';

class DeleteFile extends TdFunction {
  /// Deletes a file from the TDLib file cache
  DeleteFile({required this.fileId, this.extra});

  /// [fileId] Identifier of the file to delete
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteFile.fromJson(Map<String, dynamic> json) {
    return DeleteFile(
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

  static const CONSTRUCTOR = 'deleteFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
