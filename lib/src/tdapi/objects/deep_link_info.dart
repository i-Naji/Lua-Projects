part of '../tdapi.dart';

class DeepLinkInfo extends TdObject {
  /// Contains information about a tg:// deep link
  DeepLinkInfo(
      {required this.text, required this.needUpdateApplication, this.extra});

  /// [text] Text to be shown to the user
  FormattedText text;

  /// [needUpdateApplication] True, if user should be asked to update the application
  bool needUpdateApplication;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory DeepLinkInfo.fromJson(Map<String, dynamic> json) {
    return DeepLinkInfo(
      text: FormattedText.fromJson(json['text'] ?? <String, dynamic>{}),
      needUpdateApplication: json['need_update_application'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "need_update_application": this.needUpdateApplication,
    };
  }

  static const CONSTRUCTOR = 'deepLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
