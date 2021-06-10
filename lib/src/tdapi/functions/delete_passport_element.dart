part of '../tdapi.dart';

class DeletePassportElement extends TdFunction {
  /// Deletes a Telegram Passport element
  DeletePassportElement({required this.type, this.extra});

  /// [type] Element type
  PassportElementType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeletePassportElement.fromJson(Map<String, dynamic> json) {
    return DeletePassportElement(
      type: PassportElementType.fromJson(json['type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deletePassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
