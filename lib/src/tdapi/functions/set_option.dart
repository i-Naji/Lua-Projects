part of '../tdapi.dart';

class SetOption extends TdFunction {
  /// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization
  SetOption({required this.name, required this.value, this.extra});

  /// [name] The name of the option
  String name;

  /// [value] The new value of the option
  OptionValue value;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetOption.fromJson(Map<String, dynamic> json) {
    return SetOption(
      name: json['name'] ?? "",
      value: OptionValue.fromJson(json['value'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "value": this.value.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
