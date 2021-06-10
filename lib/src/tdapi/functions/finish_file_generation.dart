part of '../tdapi.dart';

class FinishFileGeneration extends TdFunction {
  /// Finishes the file generation
  FinishFileGeneration(
      {required this.generationId, required this.error, this.extra});

  /// [generationId] The identifier of the generation process
  int generationId;

  /// [error] If set, means that file generation has failed and should be terminated
  TdError error;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory FinishFileGeneration.fromJson(Map<String, dynamic> json) {
    return FinishFileGeneration(
      generationId: int.tryParse(json['generation_id'] ?? "") ?? 0,
      error: TdError.fromJson(json['error'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "error": this.error.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'finishFileGeneration';

  @override
  String getConstructor() => CONSTRUCTOR;
}
