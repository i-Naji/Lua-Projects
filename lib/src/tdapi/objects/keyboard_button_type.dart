part of '../tdapi.dart';

class KeyboardButtonType extends TdObject {
  /// Describes a keyboard button type
  KeyboardButtonType();

  /// a KeyboardButtonType return type can be :
  /// * KeyboardButtonTypeText
  /// * KeyboardButtonTypeRequestPhoneNumber
  /// * KeyboardButtonTypeRequestLocation
  /// * KeyboardButtonTypeRequestPoll
  factory KeyboardButtonType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case KeyboardButtonTypeText.CONSTRUCTOR:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.CONSTRUCTOR:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      default:
        return KeyboardButtonType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'keyboardButtonType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeText extends KeyboardButtonType {
  /// A simple button, with text that should be sent when the button is pressed
  KeyboardButtonTypeText();

  /// Parse from a json
  factory KeyboardButtonTypeText.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonTypeText();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  /// A button that sends the user's phone number when pressed; available only in private chats
  KeyboardButtonTypeRequestPhoneNumber();

  /// Parse from a json
  factory KeyboardButtonTypeRequestPhoneNumber.fromJson(
      Map<String, dynamic> json) {
    return KeyboardButtonTypeRequestPhoneNumber();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  /// A button that sends the user's location when pressed; available only in private chats
  KeyboardButtonTypeRequestLocation();

  /// Parse from a json
  factory KeyboardButtonTypeRequestLocation.fromJson(
      Map<String, dynamic> json) {
    return KeyboardButtonTypeRequestLocation();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  /// A button that allows the user to create and send a poll when pressed; available only in private chats
  KeyboardButtonTypeRequestPoll(
      {required this.forceRegular, required this.forceQuiz});

  /// [forceRegular] If true, only regular polls must be allowed to create
  bool forceRegular;

  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  bool forceQuiz;

  /// Parse from a json
  factory KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonTypeRequestPoll(
      forceRegular: json['force_regular'] ?? false,
      forceQuiz: json['force_quiz'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "force_regular": this.forceRegular,
      "force_quiz": this.forceQuiz,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}
