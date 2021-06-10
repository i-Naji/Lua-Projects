part of '../tdapi.dart';

class FilePart extends TdObject {
  /// Contains a part of a file
  FilePart({required this.data, this.extra});

  /// [data] File bytes
  String data;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory FilePart.fromJson(Map<String, dynamic> json) {
    return FilePart(
      data: json['data'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'filePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
