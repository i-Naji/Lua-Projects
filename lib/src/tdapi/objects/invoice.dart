part of '../tdapi.dart';

class Invoice extends TdObject {
  /// Product invoice
  Invoice(
      {required this.currency,
      required this.priceParts,
      required this.isTest,
      required this.needName,
      required this.needPhoneNumber,
      required this.needEmailAddress,
      required this.needShippingAddress,
      required this.sendPhoneNumberToProvider,
      required this.sendEmailAddressToProvider,
      required this.isFlexible});

  /// [currency] ISO 4217 currency code
  String currency;

  /// [priceParts] A list of objects used to calculate the total price of the product
  List<LabeledPricePart> priceParts;

  /// [isTest] True, if the payment is a test payment
  bool isTest;

  /// [needName] True, if the user's name is needed for payment
  bool needName;

  /// [needPhoneNumber] True, if the user's phone number is needed for payment
  bool needPhoneNumber;

  /// [needEmailAddress] True, if the user's email address is needed for payment
  bool needEmailAddress;

  /// [needShippingAddress] True, if the user's shipping address is needed for payment
  bool needShippingAddress;

  /// [sendPhoneNumberToProvider] True, if the user's phone number will be sent to the provider
  bool sendPhoneNumberToProvider;

  /// [sendEmailAddressToProvider] True, if the user's email address will be sent to the provider
  bool sendEmailAddressToProvider;

  /// [isFlexible] True, if the total price depends on the shipping method
  bool isFlexible;

  /// Parse from a json
  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
      currency: json['currency'] ?? "",
      priceParts: List<LabeledPricePart>.from((json['price_parts'] ?? [])
          .map((item) => LabeledPricePart.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      isTest: json['is_test'] ?? false,
      needName: json['need_name'] ?? false,
      needPhoneNumber: json['need_phone_number'] ?? false,
      needEmailAddress: json['need_email_address'] ?? false,
      needShippingAddress: json['need_shipping_address'] ?? false,
      sendPhoneNumberToProvider: json['send_phone_number_to_provider'] ?? false,
      sendEmailAddressToProvider:
          json['send_email_address_to_provider'] ?? false,
      isFlexible: json['is_flexible'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "currency": this.currency,
      "price_parts": this.priceParts.map((i) => i.toJson()).toList(),
      "is_test": this.isTest,
      "need_name": this.needName,
      "need_phone_number": this.needPhoneNumber,
      "need_email_address": this.needEmailAddress,
      "need_shipping_address": this.needShippingAddress,
      "send_phone_number_to_provider": this.sendPhoneNumberToProvider,
      "send_email_address_to_provider": this.sendEmailAddressToProvider,
      "is_flexible": this.isFlexible,
    };
  }

  static const CONSTRUCTOR = 'invoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}
