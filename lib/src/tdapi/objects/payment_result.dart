part of '../tdapi.dart';

class PaymentResult extends TdObject {
  /// Contains the result of a payment request
  PaymentResult(
      {required this.success, required this.verificationUrl, this.extra});

  /// [success] True, if the payment request was successful; otherwise the verification_url will be not empty
  bool success;

  /// [verificationUrl] URL for additional payment credentials verification
  String verificationUrl;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PaymentResult.fromJson(Map<String, dynamic> json) {
    return PaymentResult(
      success: json['success'] ?? false,
      verificationUrl: json['verification_url'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "success": this.success,
      "verification_url": this.verificationUrl,
    };
  }

  static const CONSTRUCTOR = 'paymentResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}
