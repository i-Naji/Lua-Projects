part of '../tdapi.dart';

class ImportContacts extends TdFunction {
  /// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
  ImportContacts({required this.contacts, this.extra});

  /// [contacts] The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  List<Contact> contacts;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ImportContacts.fromJson(Map<String, dynamic> json) {
    return ImportContacts(
      contacts: List<Contact>.from((json['contacts'] ?? [])
          .map((item) => Contact.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contacts": this.contacts.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'importContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
