part of '../tdapi.dart';

class PassportAuthorizationForm extends TdObject {
  /// Contains information about a Telegram Passport authorization form that was requested
  PassportAuthorizationForm(
      {required this.id,
      required this.requiredElements,
      required this.privacyPolicyUrl,
      this.extra});

  /// [id] Unique identifier of the authorization form
  int id;

  /// [requiredElements] Information about the Telegram Passport elements that must be provided to complete the form
  List<PassportRequiredElement> requiredElements;

  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  String privacyPolicyUrl;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    return PassportAuthorizationForm(
      id: json['id'] ?? 0,
      requiredElements: List<PassportRequiredElement>.from(
          (json['required_elements'] ?? [])
              .map((item) =>
                  PassportRequiredElement.fromJson(item ?? <String, dynamic>{}))
              .toList()),
      privacyPolicyUrl: json['privacy_policy_url'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "required_elements":
          this.requiredElements.map((i) => i.toJson()).toList(),
      "privacy_policy_url": this.privacyPolicyUrl,
    };
  }

  static const CONSTRUCTOR = 'passportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
