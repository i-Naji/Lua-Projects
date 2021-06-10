part of '../tdapi.dart';

class SetLocation extends TdFunction {
  /// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer
  SetLocation({required this.location, this.extra});

  /// [location] The new location of the user
  Location location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetLocation.fromJson(Map<String, dynamic> json) {
    return SetLocation(
      location: Location.fromJson(json['location'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
