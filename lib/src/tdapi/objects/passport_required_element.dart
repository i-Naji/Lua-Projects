part of '../tdapi.dart';

class PassportRequiredElement extends TdObject {
  /// Contains a description of the required Telegram Passport element that was requested by a service
  PassportRequiredElement({required this.suitableElements});

  /// [suitableElements] List of Telegram Passport elements any of which is enough to provide
  List<PassportSuitableElement> suitableElements;

  /// Parse from a json
  factory PassportRequiredElement.fromJson(Map<String, dynamic> json) {
    return PassportRequiredElement(
      suitableElements: List<PassportSuitableElement>.from(
          (json['suitable_elements'] ?? [])
              .map((item) =>
                  PassportSuitableElement.fromJson(item ?? <String, dynamic>{}))
              .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "suitable_elements":
          this.suitableElements.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportRequiredElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
