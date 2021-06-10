part of '../tdapi.dart';

class ValidatedOrderInfo extends TdObject {
  /// Contains a temporary identifier of validated order information, which is stored for one hour. Also contains the available shipping options
  ValidatedOrderInfo(
      {required this.orderInfoId, required this.shippingOptions, this.extra});

  /// [orderInfoId] Temporary identifier of the order information
  String orderInfoId;

  /// [shippingOptions] Available shipping options
  List<ShippingOption> shippingOptions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ValidatedOrderInfo.fromJson(Map<String, dynamic> json) {
    return ValidatedOrderInfo(
      orderInfoId: json['order_info_id'] ?? "",
      shippingOptions: List<ShippingOption>.from((json['shipping_options'] ??
              [])
          .map((item) => ShippingOption.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "order_info_id": this.orderInfoId,
      "shipping_options": this.shippingOptions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'validatedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
