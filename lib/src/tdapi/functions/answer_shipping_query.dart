part of '../tdapi.dart';

class AnswerShippingQuery extends TdFunction {
  /// Sets the result of a shipping query; for bots only
  AnswerShippingQuery(
      {required this.shippingQueryId,
      required this.shippingOptions,
      required this.errorMessage,
      this.extra});

  /// [shippingQueryId] Identifier of the shipping query
  int shippingQueryId;

  /// [shippingOptions] Available shipping options
  List<ShippingOption> shippingOptions;

  /// [errorMessage] An error message, empty on success
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AnswerShippingQuery.fromJson(Map<String, dynamic> json) {
    return AnswerShippingQuery(
      shippingQueryId: int.tryParse(json['shipping_query_id'] ?? "") ?? 0,
      shippingOptions: List<ShippingOption>.from((json['shipping_options'] ??
              [])
          .map((item) => ShippingOption.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      errorMessage: json['error_message'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "shipping_query_id": this.shippingQueryId,
      "shipping_options": this.shippingOptions.map((i) => i.toJson()).toList(),
      "error_message": this.errorMessage,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerShippingQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
