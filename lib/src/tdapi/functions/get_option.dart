part of '../tdapi.dart';

class GetOption extends TdFunction {
  /// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization
  GetOption({required this.name, this.extra});

  /// [name] The name of the option
  String name;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetOption.fromJson(Map<String, dynamic> json) {
    return GetOption(
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

  static const CONSTRUCTOR = 'getOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
