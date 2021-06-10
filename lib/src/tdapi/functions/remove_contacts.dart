part of '../tdapi.dart';

class RemoveContacts extends TdFunction {
  /// Removes users from the contact list
  RemoveContacts({required this.userIds, this.extra});

  /// [userIds] Identifiers of users to be deleted
  List<int> userIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveContacts.fromJson(Map<String, dynamic> json) {
    return RemoveContacts(
      userIds: List<int>.from(
          (json['user_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
