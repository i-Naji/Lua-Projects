part of '../tdapi.dart';

class PassportElementType extends TdObject {
  /// Contains the type of a Telegram Passport element
  PassportElementType();

  /// a PassportElementType return type can be :
  /// * PassportElementTypePersonalDetails
  /// * PassportElementTypePassport
  /// * PassportElementTypeDriverLicense
  /// * PassportElementTypeIdentityCard
  /// * PassportElementTypeInternalPassport
  /// * PassportElementTypeAddress
  /// * PassportElementTypeUtilityBill
  /// * PassportElementTypeBankStatement
  /// * PassportElementTypeRentalAgreement
  /// * PassportElementTypePassportRegistration
  /// * PassportElementTypeTemporaryRegistration
  /// * PassportElementTypePhoneNumber
  /// * PassportElementTypeEmailAddress
  factory PassportElementType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PassportElementTypePersonalDetails.CONSTRUCTOR:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePassport.CONSTRUCTOR:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypeDriverLicense.CONSTRUCTOR:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.CONSTRUCTOR:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.CONSTRUCTOR:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypeAddress.CONSTRUCTOR:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeUtilityBill.CONSTRUCTOR:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypeBankStatement.CONSTRUCTOR:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeRentalAgreement.CONSTRUCTOR:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypePassportRegistration.CONSTRUCTOR:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.CONSTRUCTOR:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeEmailAddress.CONSTRUCTOR:
        return PassportElementTypeEmailAddress.fromJson(json);
      default:
        return PassportElementType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'passportElementType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePersonalDetails extends PassportElementType {
  /// A Telegram Passport element containing the user's personal details
  PassportElementTypePersonalDetails();

  /// Parse from a json
  factory PassportElementTypePersonalDetails.fromJson(
      Map<String, dynamic> json) {
    return PassportElementTypePersonalDetails();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePassport extends PassportElementType {
  /// A Telegram Passport element containing the user's passport
  PassportElementTypePassport();

  /// Parse from a json
  factory PassportElementTypePassport.fromJson(Map<String, dynamic> json) {
    return PassportElementTypePassport();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeDriverLicense extends PassportElementType {
  /// A Telegram Passport element containing the user's driver license
  PassportElementTypeDriverLicense();

  /// Parse from a json
  factory PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json) {
    return PassportElementTypeDriverLicense();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeDriverLicense';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeIdentityCard extends PassportElementType {
  /// A Telegram Passport element containing the user's identity card
  PassportElementTypeIdentityCard();

  /// Parse from a json
  factory PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json) {
    return PassportElementTypeIdentityCard();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeIdentityCard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeInternalPassport extends PassportElementType {
  /// A Telegram Passport element containing the user's internal passport
  PassportElementTypeInternalPassport();

  /// Parse from a json
  factory PassportElementTypeInternalPassport.fromJson(
      Map<String, dynamic> json) {
    return PassportElementTypeInternalPassport();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeInternalPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeAddress extends PassportElementType {
  /// A Telegram Passport element containing the user's address
  PassportElementTypeAddress();

  /// Parse from a json
  factory PassportElementTypeAddress.fromJson(Map<String, dynamic> json) {
    return PassportElementTypeAddress();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeUtilityBill extends PassportElementType {
  /// A Telegram Passport element containing the user's utility bill
  PassportElementTypeUtilityBill();

  /// Parse from a json
  factory PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json) {
    return PassportElementTypeUtilityBill();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeUtilityBill';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeBankStatement extends PassportElementType {
  /// A Telegram Passport element containing the user's bank statement
  PassportElementTypeBankStatement();

  /// Parse from a json
  factory PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json) {
    return PassportElementTypeBankStatement();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeBankStatement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeRentalAgreement extends PassportElementType {
  /// A Telegram Passport element containing the user's rental agreement
  PassportElementTypeRentalAgreement();

  /// Parse from a json
  factory PassportElementTypeRentalAgreement.fromJson(
      Map<String, dynamic> json) {
    return PassportElementTypeRentalAgreement();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeRentalAgreement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePassportRegistration extends PassportElementType {
  /// A Telegram Passport element containing the registration page of the user's passport
  PassportElementTypePassportRegistration();

  /// Parse from a json
  factory PassportElementTypePassportRegistration.fromJson(
      Map<String, dynamic> json) {
    return PassportElementTypePassportRegistration();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePassportRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeTemporaryRegistration extends PassportElementType {
  /// A Telegram Passport element containing the user's temporary registration
  PassportElementTypeTemporaryRegistration();

  /// Parse from a json
  factory PassportElementTypeTemporaryRegistration.fromJson(
      Map<String, dynamic> json) {
    return PassportElementTypeTemporaryRegistration();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeTemporaryRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePhoneNumber extends PassportElementType {
  /// A Telegram Passport element containing the user's phone number
  PassportElementTypePhoneNumber();

  /// Parse from a json
  factory PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json) {
    return PassportElementTypePhoneNumber();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeEmailAddress extends PassportElementType {
  /// A Telegram Passport element containing the user's email address
  PassportElementTypeEmailAddress();

  /// Parse from a json
  factory PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json) {
    return PassportElementTypeEmailAddress();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
