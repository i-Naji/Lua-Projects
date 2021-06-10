part of '../tdapi.dart';

class AuthorizationState extends TdObject {
  /// Represents the current authorization state of the TDLib client
  AuthorizationState();

  /// a AuthorizationState return type can be :
  /// * AuthorizationStateWaitTdlibParameters
  /// * AuthorizationStateWaitEncryptionKey
  /// * AuthorizationStateWaitPhoneNumber
  /// * AuthorizationStateWaitCode
  /// * AuthorizationStateWaitOtherDeviceConfirmation
  /// * AuthorizationStateWaitRegistration
  /// * AuthorizationStateWaitPassword
  /// * AuthorizationStateReady
  /// * AuthorizationStateLoggingOut
  /// * AuthorizationStateClosing
  /// * AuthorizationStateClosed
  factory AuthorizationState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AuthorizationStateWaitTdlibParameters.CONSTRUCTOR:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitEncryptionKey.CONSTRUCTOR:
        return AuthorizationStateWaitEncryptionKey.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.CONSTRUCTOR:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
      case AuthorizationStateWaitCode.CONSTRUCTOR:
        return AuthorizationStateWaitCode.fromJson(json);
      case AuthorizationStateWaitOtherDeviceConfirmation.CONSTRUCTOR:
        return AuthorizationStateWaitOtherDeviceConfirmation.fromJson(json);
      case AuthorizationStateWaitRegistration.CONSTRUCTOR:
        return AuthorizationStateWaitRegistration.fromJson(json);
      case AuthorizationStateWaitPassword.CONSTRUCTOR:
        return AuthorizationStateWaitPassword.fromJson(json);
      case AuthorizationStateReady.CONSTRUCTOR:
        return AuthorizationStateReady.fromJson(json);
      case AuthorizationStateLoggingOut.CONSTRUCTOR:
        return AuthorizationStateLoggingOut.fromJson(json);
      case AuthorizationStateClosing.CONSTRUCTOR:
        return AuthorizationStateClosing.fromJson(json);
      case AuthorizationStateClosed.CONSTRUCTOR:
        return AuthorizationStateClosed.fromJson(json);
      default:
        return AuthorizationState();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'authorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  /// TDLib needs TdlibParameters for initialization
  AuthorizationStateWaitTdlibParameters({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateWaitTdlibParameters.fromJson(
      Map<String, dynamic> json) {
    return AuthorizationStateWaitTdlibParameters(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitTdlibParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  /// TDLib needs an encryption key to decrypt the local database
  AuthorizationStateWaitEncryptionKey({required this.isEncrypted, this.extra});

  /// [isEncrypted] True, if the database is currently encrypted
  bool isEncrypted;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateWaitEncryptionKey.fromJson(
      Map<String, dynamic> json) {
    return AuthorizationStateWaitEncryptionKey(
      isEncrypted: json['is_encrypted'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_encrypted": this.isEncrypted,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitEncryptionKey';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  /// TDLib needs the user's phone number to authorize. Call
  AuthorizationStateWaitPhoneNumber({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateWaitPhoneNumber.fromJson(
      Map<String, dynamic> json) {
    return AuthorizationStateWaitPhoneNumber(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitCode extends AuthorizationState {
  /// TDLib needs the user's authentication code to authorize
  AuthorizationStateWaitCode({required this.codeInfo, this.extra});

  /// [codeInfo] Information about the authorization code that was sent
  AuthenticationCodeInfo codeInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) {
    return AuthorizationStateWaitCode(
      codeInfo: AuthenticationCodeInfo.fromJson(
          json['code_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code_info": this.codeInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  /// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
  AuthorizationStateWaitOtherDeviceConfirmation(
      {required this.link, this.extra});

  /// [link] A tg:// URL for the QR code. The link will be updated frequently
  String link;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateWaitOtherDeviceConfirmation.fromJson(
      Map<String, dynamic> json) {
    return AuthorizationStateWaitOtherDeviceConfirmation(
      link: json['link'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitOtherDeviceConfirmation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitRegistration extends AuthorizationState {
  /// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration
  AuthorizationStateWaitRegistration(
      {required this.termsOfService, this.extra});

  /// [termsOfService] Telegram terms of service
  TermsOfService termsOfService;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateWaitRegistration.fromJson(
      Map<String, dynamic> json) {
    return AuthorizationStateWaitRegistration(
      termsOfService: TermsOfService.fromJson(
          json['terms_of_service'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service": this.termsOfService.toJson(),
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitPassword extends AuthorizationState {
  /// The user has been authorized, but needs to enter a password to start using the application
  AuthorizationStateWaitPassword(
      {required this.passwordHint,
      required this.hasRecoveryEmailAddress,
      required this.recoveryEmailAddressPattern,
      this.extra});

  /// [passwordHint] Hint for the password; may be empty
  String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set up
  bool hasRecoveryEmailAddress;

  /// [recoveryEmailAddressPattern] Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
  String recoveryEmailAddressPattern;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) {
    return AuthorizationStateWaitPassword(
      passwordHint: json['password_hint'] ?? "",
      hasRecoveryEmailAddress: json['has_recovery_email_address'] ?? false,
      recoveryEmailAddressPattern: json['recovery_email_address_pattern'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password_hint": this.passwordHint,
      "has_recovery_email_address": this.hasRecoveryEmailAddress,
      "recovery_email_address_pattern": this.recoveryEmailAddressPattern,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateReady extends AuthorizationState {
  /// The user has been successfully authorized. TDLib is now ready to answer queries
  AuthorizationStateReady({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateReady.fromJson(Map<String, dynamic> json) {
    return AuthorizationStateReady(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateLoggingOut extends AuthorizationState {
  /// The user is currently logging out
  AuthorizationStateLoggingOut({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json) {
    return AuthorizationStateLoggingOut(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateLoggingOut';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateClosing extends AuthorizationState {
  /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received
  AuthorizationStateClosing({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateClosing.fromJson(Map<String, dynamic> json) {
    return AuthorizationStateClosing(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateClosing';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateClosed extends AuthorizationState {
  /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to. with error code 500. To continue working, one should create a new instance of the TDLib client
  AuthorizationStateClosed({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AuthorizationStateClosed.fromJson(Map<String, dynamic> json) {
    return AuthorizationStateClosed(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateClosed';

  @override
  String getConstructor() => CONSTRUCTOR;
}
