part of '../tdapi.dart';

class Updates extends TdObject {
  /// Contains a list of updates
  Updates({required this.updates, this.extra});

  /// [updates] List of updates
  List<Update> updates;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Updates.fromJson(Map<String, dynamic> json) {
    return Updates(
      updates: List<Update>.from((json['updates'] ?? [])
          .map((item) => Update.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "updates": this.updates.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updates';

  @override
  String getConstructor() => CONSTRUCTOR;
}
