part of '../tdapi.dart';

class Address extends TdObject {
  /// Describes an address
  Address(
      {required this.countryCode,
      required this.state,
      required this.city,
      required this.streetLine1,
      required this.streetLine2,
      required this.postalCode});

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  String countryCode;

  /// [state] State, if applicable
  String state;

  /// [city] City
  String city;

  /// [streetLine1] First line of the address
  String streetLine1;

  /// [streetLine2] Second line of the address
  String streetLine2;

  /// [postalCode] Address postal code
  String postalCode;

  /// Parse from a json
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      countryCode: json['country_code'] ?? "",
      state: json['state'] ?? "",
      city: json['city'] ?? "",
      streetLine1: json['street_line1'] ?? "",
      streetLine2: json['street_line2'] ?? "",
      postalCode: json['postal_code'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "country_code": this.countryCode,
      "state": this.state,
      "city": this.city,
      "street_line1": this.streetLine1,
      "street_line2": this.streetLine2,
      "postal_code": this.postalCode,
    };
  }

  static const CONSTRUCTOR = 'address';

  @override
  String getConstructor() => CONSTRUCTOR;
}
