part of '../tdapi.dart';

class CheckChatUsernameResult extends TdObject {
  /// Represents result of checking whether a username can be set for a chat
  CheckChatUsernameResult();

  /// a CheckChatUsernameResult return type can be :
  /// * CheckChatUsernameResultOk
  /// * CheckChatUsernameResultUsernameInvalid
  /// * CheckChatUsernameResultUsernameOccupied
  /// * CheckChatUsernameResultPublicChatsTooMuch
  /// * CheckChatUsernameResultPublicGroupsUnavailable
  factory CheckChatUsernameResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CheckChatUsernameResultOk.CONSTRUCTOR:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMuch.CONSTRUCTOR:
        return CheckChatUsernameResultPublicChatsTooMuch.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.CONSTRUCTOR:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      default:
        return CheckChatUsernameResult();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'checkChatUsernameResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  /// The username can be set
  CheckChatUsernameResultOk({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json) {
    return CheckChatUsernameResultOk(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultOk';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  /// The username is invalid
  CheckChatUsernameResultUsernameInvalid({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CheckChatUsernameResultUsernameInvalid.fromJson(
      Map<String, dynamic> json) {
    return CheckChatUsernameResultUsernameInvalid(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameInvalid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  /// The username is occupied
  CheckChatUsernameResultUsernameOccupied({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CheckChatUsernameResultUsernameOccupied.fromJson(
      Map<String, dynamic> json) {
    return CheckChatUsernameResultUsernameOccupied(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameOccupied';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicChatsTooMuch
    extends CheckChatUsernameResult {
  /// The user has too much chats with username, one of them should be made private first
  CheckChatUsernameResultPublicChatsTooMuch({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CheckChatUsernameResultPublicChatsTooMuch.fromJson(
      Map<String, dynamic> json) {
    return CheckChatUsernameResultPublicChatsTooMuch(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicChatsTooMuch';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicGroupsUnavailable
    extends CheckChatUsernameResult {
  /// The user can't be a member of a public supergroup
  CheckChatUsernameResultPublicGroupsUnavailable({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CheckChatUsernameResultPublicGroupsUnavailable.fromJson(
      Map<String, dynamic> json) {
    return CheckChatUsernameResultPublicGroupsUnavailable(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  String getConstructor() => CONSTRUCTOR;
}
