part of '../tdapi.dart';

class InputCredentials extends TdObject {
  /// Contains information about the payment method chosen by the user
  InputCredentials();

  /// a InputCredentials return type can be :
  /// * InputCredentialsSaved
  /// * InputCredentialsNew
  /// * InputCredentialsAndroidPay
  /// * InputCredentialsApplePay
  factory InputCredentials.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputCredentialsSaved.CONSTRUCTOR:
        return InputCredentialsSaved.fromJson(json);
      case InputCredentialsNew.CONSTRUCTOR:
        return InputCredentialsNew.fromJson(json);
      case InputCredentialsAndroidPay.CONSTRUCTOR:
        return InputCredentialsAndroidPay.fromJson(json);
      case InputCredentialsApplePay.CONSTRUCTOR:
        return InputCredentialsApplePay.fromJson(json);
      default:
        return InputCredentials();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsSaved extends InputCredentials {
  /// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password
  InputCredentialsSaved({required this.savedCredentialsId});

  /// [savedCredentialsId] Identifier of the saved credentials
  String savedCredentialsId;

  /// Parse from a json
  factory InputCredentialsSaved.fromJson(Map<String, dynamic> json) {
    return InputCredentialsSaved(
      savedCredentialsId: json['saved_credentials_id'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "saved_credentials_id": this.savedCredentialsId,
    };
  }

  static const CONSTRUCTOR = 'inputCredentialsSaved';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsNew extends InputCredentials {
  /// Applies if a user enters new credentials on a payment provider website
  InputCredentialsNew({required this.data, required this.allowSave});

  /// [data] Contains JSON-encoded data with a credential identifier from the payment provider
  String data;

  /// [allowSave] True, if the credential identifier can be saved on the server side
  bool allowSave;

  /// Parse from a json
  factory InputCredentialsNew.fromJson(Map<String, dynamic> json) {
    return InputCredentialsNew(
      data: json['data'] ?? "",
      allowSave: json['allow_save'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
      "allow_save": this.allowSave,
    };
  }

  static const CONSTRUCTOR = 'inputCredentialsNew';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsAndroidPay extends InputCredentials {
  /// Applies if a user enters new credentials using Android Pay
  InputCredentialsAndroidPay({required this.data});

  /// [data] JSON-encoded data with the credential identifier
  String data;

  /// Parse from a json
  factory InputCredentialsAndroidPay.fromJson(Map<String, dynamic> json) {
    return InputCredentialsAndroidPay(
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

  static const CONSTRUCTOR = 'inputCredentialsAndroidPay';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsApplePay extends InputCredentials {
  /// Applies if a user enters new credentials using Apple Pay
  InputCredentialsApplePay({required this.data});

  /// [data] JSON-encoded data with the credential identifier
  String data;

  /// Parse from a json
  factory InputCredentialsApplePay.fromJson(Map<String, dynamic> json) {
    return InputCredentialsApplePay(
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

  static const CONSTRUCTOR = 'inputCredentialsApplePay';

  @override
  String getConstructor() => CONSTRUCTOR;
}
