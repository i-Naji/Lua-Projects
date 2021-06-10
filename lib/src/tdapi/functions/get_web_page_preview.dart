part of '../tdapi.dart';

class GetWebPagePreview extends TdFunction {
  /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview
  GetWebPagePreview({required this.text, this.extra});

  /// [text] Message text with formatting
  FormattedText text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetWebPagePreview.fromJson(Map<String, dynamic> json) {
    return GetWebPagePreview(
      text: FormattedText.fromJson(json['text'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getWebPagePreview';

  @override
  String getConstructor() => CONSTRUCTOR;
}
