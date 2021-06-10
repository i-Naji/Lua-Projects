part of '../tdapi.dart';

class SearchBackground extends TdFunction {
  /// Searches for a background by its name
  SearchBackground({required this.name, this.extra});

  /// [name] The name of the background
  String name;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchBackground.fromJson(Map<String, dynamic> json) {
    return SearchBackground(
      name: json['name'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
