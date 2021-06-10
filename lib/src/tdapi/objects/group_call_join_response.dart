part of '../tdapi.dart';

class GroupCallJoinResponse extends TdObject {
  /// Describes a join response for interaction with tgcalls
  GroupCallJoinResponse(
      {required this.payload, required this.candidates, this.extra});

  /// [payload] Join response payload to pass to tgcalls
  GroupCallPayload payload;

  /// [candidates] Join response candidates to pass to tgcalls
  List<GroupCallJoinResponseCandidate> candidates;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory GroupCallJoinResponse.fromJson(Map<String, dynamic> json) {
    return GroupCallJoinResponse(
      payload:
          GroupCallPayload.fromJson(json['payload'] ?? <String, dynamic>{}),
      candidates: List<GroupCallJoinResponseCandidate>.from(
          (json['candidates'] ?? [])
              .map((item) => GroupCallJoinResponseCandidate.fromJson(
                  item ?? <String, dynamic>{}))
              .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "payload": this.payload.toJson(),
      "candidates": this.candidates.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'groupCallJoinResponse';

  @override
  String getConstructor() => CONSTRUCTOR;
}
