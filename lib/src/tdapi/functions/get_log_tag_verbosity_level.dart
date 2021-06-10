part of '../tdapi.dart';

class GetLogTagVerbosityLevel extends TdFunction {
  /// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
  GetLogTagVerbosityLevel({required this.tag, this.extra});

  /// [tag] Logging tag to change verbosity level
  String tag;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) {
    return GetLogTagVerbosityLevel(
      tag: json['tag'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "tag": this.tag,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLogTagVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
