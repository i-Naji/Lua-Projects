part of '../tdapi.dart';

class Venue extends TdObject {
  /// Describes a venue
  Venue(
      {required this.location,
      required this.title,
      required this.address,
      required this.provider,
      required this.id,
      required this.type});

  /// [location] Venue location; as defined by the sender
  Location location;

  /// [title] Venue name; as defined by the sender
  String title;

  /// [address] Venue address; as defined by the sender
  String address;

  /// [provider] Provider of the venue database; as defined by the sender. Currently only "foursquare" and "gplaces" (Google Places) need to be supported
  String provider;

  /// [id] Identifier of the venue in the provider database; as defined by the sender
  String id;

  /// [type] Type of the venue in the provider database; as defined by the sender
  String type;

  /// Parse from a json
  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      location: Location.fromJson(json['location'] ?? <String, dynamic>{}),
      title: json['title'] ?? "",
      address: json['address'] ?? "",
      provider: json['provider'] ?? "",
      id: json['id'] ?? "",
      type: json['type'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "title": this.title,
      "address": this.address,
      "provider": this.provider,
      "id": this.id,
      "type": this.type,
    };
  }

  static const CONSTRUCTOR = 'venue';

  @override
  String getConstructor() => CONSTRUCTOR;
}
