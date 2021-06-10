part of '../tdapi.dart';

class GetFileDownloadedPrefixSize extends TdFunction {
  /// Returns file downloaded prefix size from a given offset
  GetFileDownloadedPrefixSize(
      {required this.fileId, required this.offset, this.extra});

  /// [fileId] Identifier of the file
  int fileId;

  /// [offset] Offset from which downloaded prefix size should be calculated
  int offset;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetFileDownloadedPrefixSize.fromJson(Map<String, dynamic> json) {
    return GetFileDownloadedPrefixSize(
      fileId: json['file_id'] ?? 0,
      offset: json['offset'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "offset": this.offset,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFileDownloadedPrefixSize';

  @override
  String getConstructor() => CONSTRUCTOR;
}
