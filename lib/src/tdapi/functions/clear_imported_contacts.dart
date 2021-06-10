part of '../tdapi.dart';

class ClearImportedContacts extends TdFunction {
  /// Clears all imported contacts, contact list remains unchanged
  ClearImportedContacts({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ClearImportedContacts.fromJson(Map<String, dynamic> json) {
    return ClearImportedContacts(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'clearImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
