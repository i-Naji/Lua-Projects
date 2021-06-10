part of '../tdapi.dart';

class GroupCallPayloadFingerprint extends TdObject {
  /// Describes a payload fingerprint for interaction with tgcalls
  GroupCallPayloadFingerprint(
      {required this.hash, required this.setup, required this.fingerprint});

  /// [hash] Value of the field hash
  String hash;

  /// [setup] Value of the field setup
  String setup;

  /// [fingerprint] Value of the field fingerprint
  String fingerprint;

  /// Parse from a json
  factory GroupCallPayloadFingerprint.fromJson(Map<String, dynamic> json) {
    return GroupCallPayloadFingerprint(
      hash: json['hash'] ?? "",
      setup: json['setup'] ?? "",
      fingerprint: json['fingerprint'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hash": this.hash,
      "setup": this.setup,
      "fingerprint": this.fingerprint,
    };
  }

  static const CONSTRUCTOR = 'groupCallPayloadFingerprint';

  @override
  String getConstructor() => CONSTRUCTOR;
}
