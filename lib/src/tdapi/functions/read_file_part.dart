part of '../tdapi.dart';

class ReadFilePart extends TdFunction {
  /// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file
  ReadFilePart(
      {required this.fileId,
      required this.offset,
      required this.count,
      this.extra});

  /// [fileId] Identifier of the file. The file must be located in the TDLib file cache
  int fileId;

  /// [offset] The offset from which to read the file
  int offset;

  /// [count] Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
  int count;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ReadFilePart.fromJson(Map<String, dynamic> json) {
    return ReadFilePart(
      fileId: json['file_id'] ?? 0,
      offset: json['offset'] ?? 0,
      count: json['count'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "offset": this.offset,
      "count": this.count,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'readFilePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
