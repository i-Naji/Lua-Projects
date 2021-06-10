part of '../tdapi.dart';

class RichText extends TdObject {
  /// Describes a text object inside an instant-view web page
  RichText();

  /// a RichText return type can be :
  /// * RichTextPlain
  /// * RichTextBold
  /// * RichTextItalic
  /// * RichTextUnderline
  /// * RichTextStrikethrough
  /// * RichTextFixed
  /// * RichTextUrl
  /// * RichTextEmailAddress
  /// * RichTextSubscript
  /// * RichTextSuperscript
  /// * RichTextMarked
  /// * RichTextPhoneNumber
  /// * RichTextIcon
  /// * RichTextReference
  /// * RichTextAnchor
  /// * RichTextAnchorLink
  /// * RichTexts
  factory RichText.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case RichTextPlain.CONSTRUCTOR:
        return RichTextPlain.fromJson(json);
      case RichTextBold.CONSTRUCTOR:
        return RichTextBold.fromJson(json);
      case RichTextItalic.CONSTRUCTOR:
        return RichTextItalic.fromJson(json);
      case RichTextUnderline.CONSTRUCTOR:
        return RichTextUnderline.fromJson(json);
      case RichTextStrikethrough.CONSTRUCTOR:
        return RichTextStrikethrough.fromJson(json);
      case RichTextFixed.CONSTRUCTOR:
        return RichTextFixed.fromJson(json);
      case RichTextUrl.CONSTRUCTOR:
        return RichTextUrl.fromJson(json);
      case RichTextEmailAddress.CONSTRUCTOR:
        return RichTextEmailAddress.fromJson(json);
      case RichTextSubscript.CONSTRUCTOR:
        return RichTextSubscript.fromJson(json);
      case RichTextSuperscript.CONSTRUCTOR:
        return RichTextSuperscript.fromJson(json);
      case RichTextMarked.CONSTRUCTOR:
        return RichTextMarked.fromJson(json);
      case RichTextPhoneNumber.CONSTRUCTOR:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextIcon.CONSTRUCTOR:
        return RichTextIcon.fromJson(json);
      case RichTextReference.CONSTRUCTOR:
        return RichTextReference.fromJson(json);
      case RichTextAnchor.CONSTRUCTOR:
        return RichTextAnchor.fromJson(json);
      case RichTextAnchorLink.CONSTRUCTOR:
        return RichTextAnchorLink.fromJson(json);
      case RichTexts.CONSTRUCTOR:
        return RichTexts.fromJson(json);
      default:
        return RichText();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'richText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPlain extends RichText {
  /// A plain text
  RichTextPlain({required this.text});

  /// [text] Text
  String text;

  /// Parse from a json
  factory RichTextPlain.fromJson(Map<String, dynamic> json) {
    return RichTextPlain(
      text: json['text'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
    };
  }

  static const CONSTRUCTOR = 'richTextPlain';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextBold extends RichText {
  /// A bold rich text
  RichTextBold({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextBold.fromJson(Map<String, dynamic> json) {
    return RichTextBold(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextBold';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextItalic extends RichText {
  /// An italicized rich text
  RichTextItalic({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextItalic.fromJson(Map<String, dynamic> json) {
    return RichTextItalic(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextItalic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUnderline extends RichText {
  /// An underlined rich text
  RichTextUnderline({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextUnderline.fromJson(Map<String, dynamic> json) {
    return RichTextUnderline(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextUnderline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextStrikethrough extends RichText {
  /// A strikethrough rich text
  RichTextStrikethrough({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextStrikethrough.fromJson(Map<String, dynamic> json) {
    return RichTextStrikethrough(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextStrikethrough';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextFixed extends RichText {
  /// A fixed-width rich text
  RichTextFixed({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextFixed.fromJson(Map<String, dynamic> json) {
    return RichTextFixed(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextFixed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUrl extends RichText {
  /// A rich text URL link
  RichTextUrl({required this.text, required this.url, required this.isCached});

  /// [text] Text
  RichText text;

  /// [url] URL
  String url;

  /// [isCached] True, if the URL has cached instant view server-side
  bool isCached;

  /// Parse from a json
  factory RichTextUrl.fromJson(Map<String, dynamic> json) {
    return RichTextUrl(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
      url: json['url'] ?? "",
      isCached: json['is_cached'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "url": this.url,
      "is_cached": this.isCached,
    };
  }

  static const CONSTRUCTOR = 'richTextUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextEmailAddress extends RichText {
  /// A rich text email link
  RichTextEmailAddress({required this.text, required this.emailAddress});

  /// [text] Text
  RichText text;

  /// [emailAddress] Email address
  String emailAddress;

  /// Parse from a json
  factory RichTextEmailAddress.fromJson(Map<String, dynamic> json) {
    return RichTextEmailAddress(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
      emailAddress: json['email_address'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "email_address": this.emailAddress,
    };
  }

  static const CONSTRUCTOR = 'richTextEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSubscript extends RichText {
  /// A subscript rich text
  RichTextSubscript({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextSubscript.fromJson(Map<String, dynamic> json) {
    return RichTextSubscript(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextSubscript';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSuperscript extends RichText {
  /// A superscript rich text
  RichTextSuperscript({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextSuperscript.fromJson(Map<String, dynamic> json) {
    return RichTextSuperscript(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextSuperscript';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextMarked extends RichText {
  /// A marked rich text
  RichTextMarked({required this.text});

  /// [text] Text
  RichText text;

  /// Parse from a json
  factory RichTextMarked.fromJson(Map<String, dynamic> json) {
    return RichTextMarked(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextMarked';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPhoneNumber extends RichText {
  /// A rich text phone number
  RichTextPhoneNumber({required this.text, required this.phoneNumber});

  /// [text] Text
  RichText text;

  /// [phoneNumber] Phone number
  String phoneNumber;

  /// Parse from a json
  factory RichTextPhoneNumber.fromJson(Map<String, dynamic> json) {
    return RichTextPhoneNumber(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
      phoneNumber: json['phone_number'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "phone_number": this.phoneNumber,
    };
  }

  static const CONSTRUCTOR = 'richTextPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextIcon extends RichText {
  /// A small image inside the text
  RichTextIcon(
      {required this.document, required this.width, required this.height});

  /// [document] The image represented as a document. The image can be in GIF, JPEG or PNG format
  Document document;

  /// [width] Width of a bounding box in which the image should be shown; 0 if unknown
  int width;

  /// [height] Height of a bounding box in which the image should be shown; 0 if unknown
  int height;

  /// Parse from a json
  factory RichTextIcon.fromJson(Map<String, dynamic> json) {
    return RichTextIcon(
      document: Document.fromJson(json['document'] ?? <String, dynamic>{}),
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document.toJson(),
      "width": this.width,
      "height": this.height,
    };
  }

  static const CONSTRUCTOR = 'richTextIcon';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextReference extends RichText {
  /// A reference to a richTexts object on the same web page
  RichTextReference(
      {required this.text, required this.anchorName, required this.url});

  /// [text] The text
  RichText text;

  /// [anchorName] The name of a richTextAnchor object, which is the first element of the target richTexts object
  String anchorName;

  /// [url] An HTTP URL, opening the reference
  String url;

  /// Parse from a json
  factory RichTextReference.fromJson(Map<String, dynamic> json) {
    return RichTextReference(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
      anchorName: json['anchor_name'] ?? "",
      url: json['url'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "anchor_name": this.anchorName,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'richTextReference';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextAnchor extends RichText {
  /// An anchor
  RichTextAnchor({required this.name});

  /// [name] Anchor name
  String name;

  /// Parse from a json
  factory RichTextAnchor.fromJson(Map<String, dynamic> json) {
    return RichTextAnchor(
      name: json['name'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
    };
  }

  static const CONSTRUCTOR = 'richTextAnchor';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextAnchorLink extends RichText {
  /// A link to an anchor on the same web page
  RichTextAnchorLink(
      {required this.text, required this.anchorName, required this.url});

  /// [text] The link text
  RichText text;

  /// [anchorName] The anchor name. If the name is empty, the link should bring back to top
  String anchorName;

  /// [url] An HTTP URL, opening the anchor
  String url;

  /// Parse from a json
  factory RichTextAnchorLink.fromJson(Map<String, dynamic> json) {
    return RichTextAnchorLink(
      text: RichText.fromJson(json['text'] ?? <String, dynamic>{}),
      anchorName: json['anchor_name'] ?? "",
      url: json['url'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "anchor_name": this.anchorName,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'richTextAnchorLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTexts extends RichText {
  /// A concatenation of rich texts
  RichTexts({required this.texts});

  /// [texts] Texts
  List<RichText> texts;

  /// Parse from a json
  factory RichTexts.fromJson(Map<String, dynamic> json) {
    return RichTexts(
      texts: List<RichText>.from((json['texts'] ?? [])
          .map((item) => RichText.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "texts": this.texts.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'richTexts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
