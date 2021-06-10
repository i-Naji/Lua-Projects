part of '../tdapi.dart';

class AcceptTermsOfService extends TdFunction {
  /// Accepts Telegram terms of services
  AcceptTermsOfService({required this.termsOfServiceId, this.extra});

  /// [termsOfServiceId] Terms of service identifier
  String termsOfServiceId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AcceptTermsOfService.fromJson(Map<String, dynamic> json) {
    return AcceptTermsOfService(
      termsOfServiceId: json['terms_of_service_id'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": this.termsOfServiceId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'acceptTermsOfService';

  @override
  String getConstructor() => CONSTRUCTOR;
}
