part of '../tdapi.dart';

class PassportElementsWithErrors extends TdObject {
  /// Contains information about a Telegram Passport elements and corresponding errors
  PassportElementsWithErrors(
      {required this.elements, required this.errors, this.extra});

  /// [elements] Telegram Passport elements
  List<PassportElement> elements;

  /// [errors] Errors in the elements that are already available
  List<PassportElementError> errors;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementsWithErrors.fromJson(Map<String, dynamic> json) {
    return PassportElementsWithErrors(
      elements: List<PassportElement>.from((json['elements'] ?? [])
          .map((item) => PassportElement.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      errors: List<PassportElementError>.from((json['errors'] ?? [])
          .map((item) =>
              PassportElementError.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.toJson()).toList(),
      "errors": this.errors.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportElementsWithErrors';

  @override
  String getConstructor() => CONSTRUCTOR;
}
