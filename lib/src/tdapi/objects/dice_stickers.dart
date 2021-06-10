part of '../tdapi.dart';

class DiceStickers extends TdObject {
  /// Contains animated stickers which should be used for dice animation rendering
  DiceStickers();

  /// a DiceStickers return type can be :
  /// * DiceStickersRegular
  /// * DiceStickersSlotMachine
  factory DiceStickers.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case DiceStickersRegular.CONSTRUCTOR:
        return DiceStickersRegular.fromJson(json);
      case DiceStickersSlotMachine.CONSTRUCTOR:
        return DiceStickersSlotMachine.fromJson(json);
      default:
        return DiceStickers();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'diceStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class DiceStickersRegular extends DiceStickers {
  /// A regular animated sticker
  DiceStickersRegular({required this.sticker});

  /// [sticker] The animated sticker with the dice animation
  Sticker sticker;

  /// Parse from a json
  factory DiceStickersRegular.fromJson(Map<String, dynamic> json) {
    return DiceStickersRegular(
      sticker: Sticker.fromJson(json['sticker'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'diceStickersRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class DiceStickersSlotMachine extends DiceStickers {
  /// Animated stickers to be combined into a slot machine
  DiceStickersSlotMachine(
      {required this.background,
      required this.lever,
      required this.leftReel,
      required this.centerReel,
      required this.rightReel});

  /// [background] The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish
  Sticker background;

  /// [lever] The animated sticker with the lever animation. The lever animation must play once in the initial dice state
  Sticker lever;

  /// [leftReel] The animated sticker with the left reel
  Sticker leftReel;

  /// [centerReel] The animated sticker with the center reel
  Sticker centerReel;

  /// [rightReel] The animated sticker with the right reel
  Sticker rightReel;

  /// Parse from a json
  factory DiceStickersSlotMachine.fromJson(Map<String, dynamic> json) {
    return DiceStickersSlotMachine(
      background: Sticker.fromJson(json['background'] ?? <String, dynamic>{}),
      lever: Sticker.fromJson(json['lever'] ?? <String, dynamic>{}),
      leftReel: Sticker.fromJson(json['left_reel'] ?? <String, dynamic>{}),
      centerReel: Sticker.fromJson(json['center_reel'] ?? <String, dynamic>{}),
      rightReel: Sticker.fromJson(json['right_reel'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background": this.background.toJson(),
      "lever": this.lever.toJson(),
      "left_reel": this.leftReel.toJson(),
      "center_reel": this.centerReel.toJson(),
      "right_reel": this.rightReel.toJson(),
    };
  }

  static const CONSTRUCTOR = 'diceStickersSlotMachine';

  @override
  String getConstructor() => CONSTRUCTOR;
}
