part of '../tdapi.dart';

class ImportedContacts extends TdObject {
  /// Represents the result of an ImportContacts request
  ImportedContacts(
      {required this.userIds, required this.importerCount, this.extra});

  /// [userIds] User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user
  List<int> userIds;

  /// [importerCount] The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  List<int> importerCount;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ImportedContacts.fromJson(Map<String, dynamic> json) {
    return ImportedContacts(
      userIds: List<int>.from(
          (json['user_ids'] ?? []).map((item) => item ?? 0).toList()),
      importerCount: List<int>.from(
          (json['importer_count'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i).toList(),
      "importer_count": this.importerCount.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'importedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
