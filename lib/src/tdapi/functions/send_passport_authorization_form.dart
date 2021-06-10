part of '../tdapi.dart';

class SendPassportAuthorizationForm extends TdFunction {
  /// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
  SendPassportAuthorizationForm(
      {required this.autorizationFormId, required this.types, this.extra});

  /// [autorizationFormId] Authorization form identifier
  int autorizationFormId;

  /// [types] Types of Telegram Passport elements chosen by user to complete the authorization form
  List<PassportElementType> types;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendPassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    return SendPassportAuthorizationForm(
      autorizationFormId: json['autorization_form_id'] ?? 0,
      types: List<PassportElementType>.from((json['types'] ?? [])
          .map((item) =>
              PassportElementType.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "autorization_form_id": this.autorizationFormId,
      "types": this.types.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPassportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
