part of '../tdapi.dart';

class WriteGeneratedFilePart extends TdFunction {
  /// Writes a part of a generated file. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file
  WriteGeneratedFilePart(
      {required this.generationId,
      required this.offset,
      required this.data,
      this.extra});

  /// [generationId] The identifier of the generation process
  int generationId;

  /// [offset] The offset from which to write the data to the file
  int offset;

  /// [data] The data to write
  String data;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory WriteGeneratedFilePart.fromJson(Map<String, dynamic> json) {
    return WriteGeneratedFilePart(
      generationId: int.tryParse(json['generation_id'] ?? "") ?? 0,
      offset: json['offset'] ?? 0,
      data: json['data'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "offset": this.offset,
      "data": this.data,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'writeGeneratedFilePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
