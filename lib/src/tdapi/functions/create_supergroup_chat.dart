part of '../tdapi.dart';

class CreateSupergroupChat extends TdFunction {
  /// Returns an existing chat corresponding to a known supergroup or channel
  CreateSupergroupChat(
      {required this.supergroupId, required this.force, this.extra});

  /// [supergroupId] Supergroup or channel identifier
  int supergroupId;

  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  bool force;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateSupergroupChat.fromJson(Map<String, dynamic> json) {
    return CreateSupergroupChat(
      supergroupId: json['supergroup_id'] ?? 0,
      force: json['force'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
