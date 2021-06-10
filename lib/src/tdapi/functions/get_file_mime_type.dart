part of '../tdapi.dart';

class GetFileMimeType extends TdFunction {
  /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
  GetFileMimeType({required this.fileName, this.extra});

  /// [fileName] The name of the file or path to the file
  String fileName;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetFileMimeType.fromJson(Map<String, dynamic> json) {
    return GetFileMimeType(
      fileName: json['file_name'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFileMimeType';

  @override
  String getConstructor() => CONSTRUCTOR;
}
