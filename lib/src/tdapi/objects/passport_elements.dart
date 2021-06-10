part of '../tdapi.dart';

class PassportElements extends TdObject {
  /// Contains information about saved Telegram Passport elements
  PassportElements({required this.elements, this.extra});

  /// [elements] Telegram Passport elements
  List<PassportElement> elements;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElements.fromJson(Map<String, dynamic> json) {
    return PassportElements(
      elements: List<PassportElement>.from((json['elements'] ?? [])
          .map((item) => PassportElement.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportElements';

  @override
  String getConstructor() => CONSTRUCTOR;
}
