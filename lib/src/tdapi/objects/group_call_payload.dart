part of '../tdapi.dart';

class GroupCallPayload extends TdObject {
  /// Describes a payload for interaction with tgcalls
  GroupCallPayload(
      {required this.ufrag, required this.pwd, required this.fingerprints});

  /// [ufrag] Value of the field ufrag
  String ufrag;

  /// [pwd] Value of the field pwd
  String pwd;

  /// [fingerprints] The list of fingerprints
  List<GroupCallPayloadFingerprint> fingerprints;

  /// Parse from a json
  factory GroupCallPayload.fromJson(Map<String, dynamic> json) {
    return GroupCallPayload(
      ufrag: json['ufrag'] ?? "",
      pwd: json['pwd'] ?? "",
      fingerprints: List<GroupCallPayloadFingerprint>.from(
          (json['fingerprints'] ?? [])
              .map((item) => GroupCallPayloadFingerprint.fromJson(
                  item ?? <String, dynamic>{}))
              .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ufrag": this.ufrag,
      "pwd": this.pwd,
      "fingerprints": this.fingerprints.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'groupCallPayload';

  @override
  String getConstructor() => CONSTRUCTOR;
}
