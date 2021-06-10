part of '../tdapi.dart';

class GetFile extends TdFunction {
  /// Returns information about a file; this is an offline request
  GetFile({required this.fileId, this.extra});

  /// [fileId] Identifier of the file to get
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetFile.fromJson(Map<String, dynamic> json) {
    return GetFile(
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

  static const CONSTRUCTOR = 'getFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
