part of '../tdapi.dart';

class PassportSuitableElement extends TdObject {
  /// Contains information about a Telegram Passport element that was requested by a service
  PassportSuitableElement(
      {required this.type,
      required this.isSelfieRequired,
      required this.isTranslationRequired,
      required this.isNativeNameRequired});

  /// [type] Type of the element
  PassportElementType type;

  /// [isSelfieRequired] True, if a selfie is required with the identity document
  bool isSelfieRequired;

  /// [isTranslationRequired] True, if a certified English translation is required with the document
  bool isTranslationRequired;

  /// [isNativeNameRequired] True, if personal details must include the user's name in the language of their country of residence
  bool isNativeNameRequired;

  /// Parse from a json
  factory PassportSuitableElement.fromJson(Map<String, dynamic> json) {
    return PassportSuitableElement(
      type: PassportElementType.fromJson(json['type'] ?? <String, dynamic>{}),
      isSelfieRequired: json['is_selfie_required'] ?? false,
      isTranslationRequired: json['is_translation_required'] ?? false,
      isNativeNameRequired: json['is_native_name_required'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "is_selfie_required": this.isSelfieRequired,
      "is_translation_required": this.isTranslationRequired,
      "is_native_name_required": this.isNativeNameRequired,
    };
  }

  static const CONSTRUCTOR = 'passportSuitableElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
