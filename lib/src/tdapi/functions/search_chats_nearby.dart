part of '../tdapi.dart';

class SearchChatsNearby extends TdFunction {
  /// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby. The request should be sent again every 25 seconds with adjusted location to not miss new chats
  SearchChatsNearby({required this.location, this.extra});

  /// [location] Current user location
  Location location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchChatsNearby.fromJson(Map<String, dynamic> json) {
    return SearchChatsNearby(
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

  static const CONSTRUCTOR = 'searchChatsNearby';

  @override
  String getConstructor() => CONSTRUCTOR;
}
