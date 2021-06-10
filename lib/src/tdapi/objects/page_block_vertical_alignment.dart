part of '../tdapi.dart';

class PageBlockVerticalAlignment extends TdObject {
  /// Describes a Vertical alignment of a table cell content
  PageBlockVerticalAlignment();

  /// a PageBlockVerticalAlignment return type can be :
  /// * PageBlockVerticalAlignmentTop
  /// * PageBlockVerticalAlignmentMiddle
  /// * PageBlockVerticalAlignmentBottom
  factory PageBlockVerticalAlignment.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PageBlockVerticalAlignmentTop.CONSTRUCTOR:
        return PageBlockVerticalAlignmentTop.fromJson(json);
      case PageBlockVerticalAlignmentMiddle.CONSTRUCTOR:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);
      case PageBlockVerticalAlignmentBottom.CONSTRUCTOR:
        return PageBlockVerticalAlignmentBottom.fromJson(json);
      default:
        return PageBlockVerticalAlignment();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'pageBlockVerticalAlignment';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  /// The content should be top-aligned
  PageBlockVerticalAlignmentTop();

  /// Parse from a json
  factory PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json) {
    return PageBlockVerticalAlignmentTop();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pageBlockVerticalAlignmentTop';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  /// The content should be middle-aligned
  PageBlockVerticalAlignmentMiddle();

  /// Parse from a json
  factory PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json) {
    return PageBlockVerticalAlignmentMiddle();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pageBlockVerticalAlignmentMiddle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  /// The content should be bottom-aligned
  PageBlockVerticalAlignmentBottom();

  /// Parse from a json
  factory PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json) {
    return PageBlockVerticalAlignmentBottom();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pageBlockVerticalAlignmentBottom';

  @override
  String getConstructor() => CONSTRUCTOR;
}
