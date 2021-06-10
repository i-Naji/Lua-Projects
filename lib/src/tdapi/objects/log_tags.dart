part of '../tdapi.dart';

class LogTags extends TdObject {
  /// Contains a list of available TDLib internal log tags
  LogTags({required this.tags, this.extra});

  /// [tags] List of log tags
  List<String> tags;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LogTags.fromJson(Map<String, dynamic> json) {
    return LogTags(
      tags: List<String>.from(
          (json['tags'] ?? []).map((item) => item ?? "").toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "tags": this.tags.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'logTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
