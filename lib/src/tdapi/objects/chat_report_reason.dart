part of '../tdapi.dart';

class ChatReportReason extends TdObject {
  /// Describes the reason why a chat is reported
  ChatReportReason();

  /// a ChatReportReason return type can be :
  /// * ChatReportReasonSpam
  /// * ChatReportReasonViolence
  /// * ChatReportReasonPornography
  /// * ChatReportReasonChildAbuse
  /// * ChatReportReasonCopyright
  /// * ChatReportReasonUnrelatedLocation
  /// * ChatReportReasonCustom
  factory ChatReportReason.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatReportReasonSpam.CONSTRUCTOR:
        return ChatReportReasonSpam.fromJson(json);
      case ChatReportReasonViolence.CONSTRUCTOR:
        return ChatReportReasonViolence.fromJson(json);
      case ChatReportReasonPornography.CONSTRUCTOR:
        return ChatReportReasonPornography.fromJson(json);
      case ChatReportReasonChildAbuse.CONSTRUCTOR:
        return ChatReportReasonChildAbuse.fromJson(json);
      case ChatReportReasonCopyright.CONSTRUCTOR:
        return ChatReportReasonCopyright.fromJson(json);
      case ChatReportReasonUnrelatedLocation.CONSTRUCTOR:
        return ChatReportReasonUnrelatedLocation.fromJson(json);
      case ChatReportReasonCustom.CONSTRUCTOR:
        return ChatReportReasonCustom.fromJson(json);
      default:
        return ChatReportReason();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatReportReason';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonSpam extends ChatReportReason {
  /// The chat contains spam messages
  ChatReportReasonSpam();

  /// Parse from a json
  factory ChatReportReasonSpam.fromJson(Map<String, dynamic> json) {
    return ChatReportReasonSpam();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatReportReasonSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonViolence extends ChatReportReason {
  /// The chat promotes violence
  ChatReportReasonViolence();

  /// Parse from a json
  factory ChatReportReasonViolence.fromJson(Map<String, dynamic> json) {
    return ChatReportReasonViolence();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatReportReasonViolence';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonPornography extends ChatReportReason {
  /// The chat contains pornographic messages
  ChatReportReasonPornography();

  /// Parse from a json
  factory ChatReportReasonPornography.fromJson(Map<String, dynamic> json) {
    return ChatReportReasonPornography();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatReportReasonPornography';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonChildAbuse extends ChatReportReason {
  /// The chat has child abuse related content
  ChatReportReasonChildAbuse();

  /// Parse from a json
  factory ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json) {
    return ChatReportReasonChildAbuse();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatReportReasonChildAbuse';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonCopyright extends ChatReportReason {
  /// The chat contains copyrighted content
  ChatReportReasonCopyright();

  /// Parse from a json
  factory ChatReportReasonCopyright.fromJson(Map<String, dynamic> json) {
    return ChatReportReasonCopyright();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatReportReasonCopyright';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonUnrelatedLocation extends ChatReportReason {
  /// The location-based chat is unrelated to its stated location
  ChatReportReasonUnrelatedLocation();

  /// Parse from a json
  factory ChatReportReasonUnrelatedLocation.fromJson(
      Map<String, dynamic> json) {
    return ChatReportReasonUnrelatedLocation();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatReportReasonUnrelatedLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonCustom extends ChatReportReason {
  /// A custom reason provided by the user
  ChatReportReasonCustom({required this.text});

  /// [text] Report text
  String text;

  /// Parse from a json
  factory ChatReportReasonCustom.fromJson(Map<String, dynamic> json) {
    return ChatReportReasonCustom(
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

  static const CONSTRUCTOR = 'chatReportReasonCustom';

  @override
  String getConstructor() => CONSTRUCTOR;
}
