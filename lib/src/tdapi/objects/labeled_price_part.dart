part of '../tdapi.dart';

class LabeledPricePart extends TdObject {
  /// Portion of the price of a product (e.g., "delivery cost", "tax amount")
  LabeledPricePart({required this.label, required this.amount});

  /// [label] Label for this portion of the product price
  String label;

  /// [amount] Currency amount in minimal quantity of the currency
  int amount;

  /// Parse from a json
  factory LabeledPricePart.fromJson(Map<String, dynamic> json) {
    return LabeledPricePart(
      label: json['label'] ?? "",
      amount: json['amount'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "label": this.label,
      "amount": this.amount,
    };
  }

  static const CONSTRUCTOR = 'labeledPricePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
