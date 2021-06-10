part of '../tdapi.dart';

class InlineKeyboardButtonType extends TdObject {
  /// Describes the type of an inline keyboard button
  InlineKeyboardButtonType();

  /// a InlineKeyboardButtonType return type can be :
  /// * InlineKeyboardButtonTypeUrl
  /// * InlineKeyboardButtonTypeLoginUrl
  /// * InlineKeyboardButtonTypeCallback
  /// * InlineKeyboardButtonTypeCallbackWithPassword
  /// * InlineKeyboardButtonTypeCallbackGame
  /// * InlineKeyboardButtonTypeSwitchInline
  /// * InlineKeyboardButtonTypeBuy
  factory InlineKeyboardButtonType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InlineKeyboardButtonTypeUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeCallback.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.CONSTRUCTOR:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.CONSTRUCTOR:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      default:
        return InlineKeyboardButtonType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  /// A button that opens a specified URL
  InlineKeyboardButtonTypeUrl({required this.url});

  /// [url] HTTP or tg:// URL to open
  String url;

  /// Parse from a json
  factory InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardButtonTypeUrl(
      url: json['url'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  /// A button that opens a specified URL and automatically authorize the current user if allowed to do so
  InlineKeyboardButtonTypeLoginUrl(
      {required this.url, required this.id, required this.forwardText});

  /// [url] An HTTP URL to open
  String url;

  /// [id] Unique button identifier
  int id;

  /// [forwardText] If non-empty, new text of the button in forwarded messages
  String forwardText;

  /// Parse from a json
  factory InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardButtonTypeLoginUrl(
      url: json['url'] ?? "",
      id: json['id'] ?? 0,
      forwardText: json['forward_text'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "id": this.id,
      "forward_text": this.forwardText,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeLoginUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  /// A button that sends a callback query to a bot
  InlineKeyboardButtonTypeCallback({required this.data});

  /// [data] Data to be sent to the bot via a callback query
  String data;

  /// Parse from a json
  factory InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardButtonTypeCallback(
      data: json['data'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallback';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineKeyboardButtonTypeCallbackWithPassword
    extends InlineKeyboardButtonType {
  /// A button that asks for password of the current user and then sends a callback query to a bot
  InlineKeyboardButtonTypeCallbackWithPassword({required this.data});

  /// [data] Data to be sent to the bot via a callback query
  String data;

  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackWithPassword.fromJson(
      Map<String, dynamic> json) {
    return InlineKeyboardButtonTypeCallbackWithPassword(
      data: json['data'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackWithPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame
  InlineKeyboardButtonTypeCallbackGame();

  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackGame.fromJson(
      Map<String, dynamic> json) {
    return InlineKeyboardButtonTypeCallbackGame();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  /// A button that forces an inline query to the bot to be inserted in the input field
  InlineKeyboardButtonTypeSwitchInline(
      {required this.query, required this.inCurrentChat});

  /// [query] Inline query to be sent to the bot
  String query;

  /// [inCurrentChat] True, if the inline query should be sent from the current chat
  bool inCurrentChat;

  /// Parse from a json
  factory InlineKeyboardButtonTypeSwitchInline.fromJson(
      Map<String, dynamic> json) {
    return InlineKeyboardButtonTypeSwitchInline(
      query: json['query'] ?? "",
      inCurrentChat: json['in_current_chat'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "in_current_chat": this.inCurrentChat,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeSwitchInline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
  InlineKeyboardButtonTypeBuy();

  /// Parse from a json
  factory InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardButtonTypeBuy();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeBuy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
