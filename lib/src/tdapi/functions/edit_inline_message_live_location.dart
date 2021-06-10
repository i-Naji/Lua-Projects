part of '../tdapi.dart';

class EditInlineMessageLiveLocation extends TdFunction {
  /// Edits the content of a live location in an inline message sent via a bot; for bots only
  EditInlineMessageLiveLocation(
      {required this.inlineMessageId,
      required this.replyMarkup,
      this.location,
      required this.heading,
      required this.proximityAlertRadius,
      this.extra});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  ReplyMarkup replyMarkup;

  /// [location] New location content of the message; may be null. Pass null to stop sharing the live location
  Location? location;

  /// [heading] The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  int heading;

  /// [proximityAlertRadius] The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  int proximityAlertRadius;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditInlineMessageLiveLocation.fromJson(Map<String, dynamic> json) {
    return EditInlineMessageLiveLocation(
      inlineMessageId: json['inline_message_id'] ?? "",
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{}),
      location: Location.fromJson(json['location'] ?? <String, dynamic>{}),
      heading: json['heading'] ?? 0,
      proximityAlertRadius: json['proximity_alert_radius'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup.toJson(),
      "location": this.location == null ? null : this.location!.toJson(),
      "heading": this.heading,
      "proximity_alert_radius": this.proximityAlertRadius,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageLiveLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
