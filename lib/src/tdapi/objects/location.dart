part of '../tdapi.dart';

class Location extends TdObject {
  /// Describes a location on planet Earth
  Location(
      {required this.latitude,
      required this.longitude,
      required this.horizontalAccuracy});

  /// [latitude] Latitude of the location in degrees; as defined by the sender
  double latitude;

  /// [longitude] Longitude of the location, in degrees; as defined by the sender
  double longitude;

  /// [horizontalAccuracy] The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
  double horizontalAccuracy;

  /// Parse from a json
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      latitude: json['latitude'] ?? 0,
      longitude: json['longitude'] ?? 0,
      horizontalAccuracy: json['horizontal_accuracy'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "latitude": this.latitude,
      "longitude": this.longitude,
      "horizontal_accuracy": this.horizontalAccuracy,
    };
  }

  static const CONSTRUCTOR = 'location';

  @override
  String getConstructor() => CONSTRUCTOR;
}
