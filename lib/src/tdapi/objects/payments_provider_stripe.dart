part of '../tdapi.dart';

class PaymentsProviderStripe extends TdObject {
  /// Stripe payment provider
  PaymentsProviderStripe(
      {required this.publishableKey,
      required this.needCountry,
      required this.needPostalCode,
      required this.needCardholderName});

  /// [publishableKey] Stripe API publishable key
  String publishableKey;

  /// [needCountry] True, if the user country must be provided
  bool needCountry;

  /// [needPostalCode] True, if the user ZIP/postal code must be provided
  bool needPostalCode;

  /// [needCardholderName] True, if the cardholder name must be provided
  bool needCardholderName;

  /// Parse from a json
  factory PaymentsProviderStripe.fromJson(Map<String, dynamic> json) {
    return PaymentsProviderStripe(
      publishableKey: json['publishable_key'] ?? "",
      needCountry: json['need_country'] ?? false,
      needPostalCode: json['need_postal_code'] ?? false,
      needCardholderName: json['need_cardholder_name'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "publishable_key": this.publishableKey,
      "need_country": this.needCountry,
      "need_postal_code": this.needPostalCode,
      "need_cardholder_name": this.needCardholderName,
    };
  }

  static const CONSTRUCTOR = 'paymentsProviderStripe';

  @override
  String getConstructor() => CONSTRUCTOR;
}
