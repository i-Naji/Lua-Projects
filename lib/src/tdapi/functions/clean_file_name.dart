part of '../tdapi.dart';

class CleanFileName extends TdFunction {
  /// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously
  CleanFileName({required this.fileName, this.extra});

  /// [fileName] File name or path to the file
  String fileName;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CleanFileName.fromJson(Map<String, dynamic> json) {
    return CleanFileName(
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

  static const CONSTRUCTOR = 'cleanFileName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
