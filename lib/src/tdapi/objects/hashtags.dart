part of '../tdapi.dart';

class Hashtags extends TdObject {
  /// Contains a list of hashtags
  Hashtags({required this.hashtags, this.extra});

  /// [hashtags] A list of hashtags
  List<String> hashtags;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Hashtags.fromJson(Map<String, dynamic> json) {
    return Hashtags(
      hashtags: List<String>.from(
          (json['hashtags'] ?? []).map((item) => item ?? "").toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hashtags": this.hashtags.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'hashtags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
