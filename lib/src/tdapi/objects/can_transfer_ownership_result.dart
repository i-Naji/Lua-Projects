part of '../tdapi.dart';

class CanTransferOwnershipResult extends TdObject {
  /// Represents result of checking whether the current session can be used to transfer a chat ownership to another user
  CanTransferOwnershipResult();

  /// a CanTransferOwnershipResult return type can be :
  /// * CanTransferOwnershipResultOk
  /// * CanTransferOwnershipResultPasswordNeeded
  /// * CanTransferOwnershipResultPasswordTooFresh
  /// * CanTransferOwnershipResultSessionTooFresh
  factory CanTransferOwnershipResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CanTransferOwnershipResultOk.CONSTRUCTOR:
        return CanTransferOwnershipResultOk.fromJson(json);
      case CanTransferOwnershipResultPasswordNeeded.CONSTRUCTOR:
        return CanTransferOwnershipResultPasswordNeeded.fromJson(json);
      case CanTransferOwnershipResultPasswordTooFresh.CONSTRUCTOR:
        return CanTransferOwnershipResultPasswordTooFresh.fromJson(json);
      case CanTransferOwnershipResultSessionTooFresh.CONSTRUCTOR:
        return CanTransferOwnershipResultSessionTooFresh.fromJson(json);
      default:
        return CanTransferOwnershipResult();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  /// The session can be used
  CanTransferOwnershipResultOk({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CanTransferOwnershipResultOk.fromJson(Map<String, dynamic> json) {
    return CanTransferOwnershipResultOk(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultOk';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CanTransferOwnershipResultPasswordNeeded
    extends CanTransferOwnershipResult {
  /// The 2-step verification needs to be enabled first
  CanTransferOwnershipResultPasswordNeeded({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CanTransferOwnershipResultPasswordNeeded.fromJson(
      Map<String, dynamic> json) {
    return CanTransferOwnershipResultPasswordNeeded(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultPasswordNeeded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CanTransferOwnershipResultPasswordTooFresh
    extends CanTransferOwnershipResult {
  /// The 2-step verification was enabled recently, user needs to wait
  CanTransferOwnershipResultPasswordTooFresh(
      {required this.retryAfter, this.extra});

  /// [retryAfter] Time left before the session can be used to transfer ownership of a chat, in seconds
  int retryAfter;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CanTransferOwnershipResultPasswordTooFresh.fromJson(
      Map<String, dynamic> json) {
    return CanTransferOwnershipResultPasswordTooFresh(
      retryAfter: json['retry_after'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": this.retryAfter,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultPasswordTooFresh';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CanTransferOwnershipResultSessionTooFresh
    extends CanTransferOwnershipResult {
  /// The session was created recently, user needs to wait
  CanTransferOwnershipResultSessionTooFresh(
      {required this.retryAfter, this.extra});

  /// [retryAfter] Time left before the session can be used to transfer ownership of a chat, in seconds
  int retryAfter;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CanTransferOwnershipResultSessionTooFresh.fromJson(
      Map<String, dynamic> json) {
    return CanTransferOwnershipResultSessionTooFresh(
      retryAfter: json['retry_after'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": this.retryAfter,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultSessionTooFresh';

  @override
  String getConstructor() => CONSTRUCTOR;
}
