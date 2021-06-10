part of '../tdapi.dart';

class CreateBasicGroupChat extends TdFunction {
  /// Returns an existing chat corresponding to a known basic group
  CreateBasicGroupChat(
      {required this.basicGroupId, required this.force, this.extra});

  /// [basicGroupId] Basic group identifier
  int basicGroupId;

  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  bool force;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateBasicGroupChat.fromJson(Map<String, dynamic> json) {
    return CreateBasicGroupChat(
      basicGroupId: json['basic_group_id'] ?? 0,
      force: json['force'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
