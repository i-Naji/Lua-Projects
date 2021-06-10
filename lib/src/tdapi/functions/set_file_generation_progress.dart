part of '../tdapi.dart';

class SetFileGenerationProgress extends TdFunction {
  /// Informs TDLib on a file generation progress
  SetFileGenerationProgress(
      {required this.generationId,
      required this.expectedSize,
      required this.localPrefixSize,
      this.extra});

  /// [generationId] The identifier of the generation process
  int generationId;

  /// [expectedSize] Expected size of the generated file, in bytes; 0 if unknown
  int expectedSize;

  /// [localPrefixSize] The number of bytes already generated
  int localPrefixSize;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetFileGenerationProgress.fromJson(Map<String, dynamic> json) {
    return SetFileGenerationProgress(
      generationId: int.tryParse(json['generation_id'] ?? "") ?? 0,
      expectedSize: json['expected_size'] ?? 0,
      localPrefixSize: json['local_prefix_size'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "expected_size": this.expectedSize,
      "local_prefix_size": this.localPrefixSize,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setFileGenerationProgress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
