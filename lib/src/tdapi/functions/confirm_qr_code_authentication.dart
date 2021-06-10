part of '../tdapi.dart';

class ConfirmQrCodeAuthentication extends TdFunction {
  /// Confirms QR code authentication on another device. Returns created session on success
  ConfirmQrCodeAuthentication({required this.link, this.extra});

  /// [link] A link from a QR code. The link must be scanned by the in-app camera
  String link;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ConfirmQrCodeAuthentication.fromJson(Map<String, dynamic> json) {
    return ConfirmQrCodeAuthentication(
      link: json['link'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'confirmQrCodeAuthentication';

  @override
  String getConstructor() => CONSTRUCTOR;
}
