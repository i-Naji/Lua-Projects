part of '../tdapi.dart';

class PageBlockCaption extends TdObject {
  /// Contains a caption of an instant view web page block, consisting of a text and a trailing credit
  PageBlockCaption({required this.text, required this.credit});

  /// [text] Content of the caption
  RichText text;

  /// [credit] Block credit (like HTML tag <cite>)
  RichText credit;

  /// Parse from a json
  factory PageBlockCaption.fromJson(Map<String, dynamic> json) {
    return PageBlockCaption(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
      credit: RichText.fromJson(json['credit'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "credit": this.credit.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
