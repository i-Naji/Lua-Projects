part of '../tdapi.dart';

class DatedFile extends TdObject {
  /// File with the date it was uploaded
  DatedFile({required this.file, required this.date});

  /// [file] The file
  File file;

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  int date;

  /// Parse from a json
  factory DatedFile.fromJson(Map<String, dynamic> json) {
    return DatedFile(
      file: File.fromJson(json['file'] ?? <String, dynamic>{}),
      date: json['date'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": this.file.toJson(),
      "date": this.date,
    };
  }

  static const CONSTRUCTOR = 'datedFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
