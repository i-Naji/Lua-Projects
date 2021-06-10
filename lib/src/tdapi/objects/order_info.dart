part of '../tdapi.dart';

class OrderInfo extends TdObject {
  /// Order information
  OrderInfo(
      {required this.name,
      required this.phoneNumber,
      required this.emailAddress,
      this.shippingAddress,
      this.extra});

  /// [name] Name of the user
  String name;

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [emailAddress] Email address of the user
  String emailAddress;

  /// [shippingAddress] Shipping address for this order; may be null
  Address? shippingAddress;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory OrderInfo.fromJson(Map<String, dynamic> json) {
    return OrderInfo(
      name: json['name'] ?? "",
      phoneNumber: json['phone_number'] ?? "",
      emailAddress: json['email_address'] ?? "",
      shippingAddress:
          Address.fromJson(json['shipping_address'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "phone_number": this.phoneNumber,
      "email_address": this.emailAddress,
      "shipping_address":
          this.shippingAddress == null ? null : this.shippingAddress!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'orderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
