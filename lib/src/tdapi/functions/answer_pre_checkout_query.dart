part of '../tdapi.dart';

class AnswerPreCheckoutQuery extends TdFunction {
  /// Sets the result of a pre-checkout query; for bots only
  AnswerPreCheckoutQuery(
      {required this.preCheckoutQueryId,
      required this.errorMessage,
      this.extra});

  /// [preCheckoutQueryId] Identifier of the pre-checkout query
  int preCheckoutQueryId;

  /// [errorMessage] An error message, empty on success
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AnswerPreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    return AnswerPreCheckoutQuery(
      preCheckoutQueryId:
          int.tryParse(json['pre_checkout_query_id'] ?? "") ?? 0,
      errorMessage: json['error_message'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "pre_checkout_query_id": this.preCheckoutQueryId,
      "error_message": this.errorMessage,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerPreCheckoutQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
