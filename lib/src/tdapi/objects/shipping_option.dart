part of '../tdapi.dart';

class ShippingOption extends TdObject {
  /// One shipping option
  ShippingOption(
      {required this.id, required this.title, required this.priceParts});

  /// [id] Shipping option identifier
  String id;

  /// [title] Option title
  String title;

  /// [priceParts] A list of objects used to calculate the total shipping costs
  List<LabeledPricePart> priceParts;

  /// Parse from a json
  factory ShippingOption.fromJson(Map<String, dynamic> json) {
    return ShippingOption(
      id: json['id'] ?? "",
      title: json['title'] ?? "",
      priceParts: List<LabeledPricePart>.from((json['price_parts'] ?? [])
          .map((item) => LabeledPricePart.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "price_parts": this.priceParts.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'shippingOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
