part of '../tdapi.dart';

class PassportElement extends TdObject {
  /// Contains information about a Telegram Passport element
  PassportElement();

  /// a PassportElement return type can be :
  /// * PassportElementPersonalDetails
  /// * PassportElementPassport
  /// * PassportElementDriverLicense
  /// * PassportElementIdentityCard
  /// * PassportElementInternalPassport
  /// * PassportElementAddress
  /// * PassportElementUtilityBill
  /// * PassportElementBankStatement
  /// * PassportElementRentalAgreement
  /// * PassportElementPassportRegistration
  /// * PassportElementTemporaryRegistration
  /// * PassportElementPhoneNumber
  /// * PassportElementEmailAddress
  factory PassportElement.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PassportElementPersonalDetails.CONSTRUCTOR:
        return PassportElementPersonalDetails.fromJson(json);
      case PassportElementPassport.CONSTRUCTOR:
        return PassportElementPassport.fromJson(json);
      case PassportElementDriverLicense.CONSTRUCTOR:
        return PassportElementDriverLicense.fromJson(json);
      case PassportElementIdentityCard.CONSTRUCTOR:
        return PassportElementIdentityCard.fromJson(json);
      case PassportElementInternalPassport.CONSTRUCTOR:
        return PassportElementInternalPassport.fromJson(json);
      case PassportElementAddress.CONSTRUCTOR:
        return PassportElementAddress.fromJson(json);
      case PassportElementUtilityBill.CONSTRUCTOR:
        return PassportElementUtilityBill.fromJson(json);
      case PassportElementBankStatement.CONSTRUCTOR:
        return PassportElementBankStatement.fromJson(json);
      case PassportElementRentalAgreement.CONSTRUCTOR:
        return PassportElementRentalAgreement.fromJson(json);
      case PassportElementPassportRegistration.CONSTRUCTOR:
        return PassportElementPassportRegistration.fromJson(json);
      case PassportElementTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTemporaryRegistration.fromJson(json);
      case PassportElementPhoneNumber.CONSTRUCTOR:
        return PassportElementPhoneNumber.fromJson(json);
      case PassportElementEmailAddress.CONSTRUCTOR:
        return PassportElementEmailAddress.fromJson(json);
      default:
        return PassportElement();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'passportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPersonalDetails extends PassportElement {
  /// A Telegram Passport element containing the user's personal details
  PassportElementPersonalDetails({required this.personalDetails, this.extra});

  /// [personalDetails] Personal details of the user
  PersonalDetails personalDetails;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementPersonalDetails.fromJson(Map<String, dynamic> json) {
    return PassportElementPersonalDetails(
      personalDetails: PersonalDetails.fromJson(
          json['personal_details'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "personal_details": this.personalDetails.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPassport extends PassportElement {
  /// A Telegram Passport element containing the user's passport
  PassportElementPassport({required this.passport, this.extra});

  /// [passport] Passport
  IdentityDocument passport;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementPassport.fromJson(Map<String, dynamic> json) {
    return PassportElementPassport(
      passport:
          IdentityDocument.fromJson(json['passport'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport": this.passport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementDriverLicense extends PassportElement {
  /// A Telegram Passport element containing the user's driver license
  PassportElementDriverLicense({required this.driverLicense, this.extra});

  /// [driverLicense] Driver license
  IdentityDocument driverLicense;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementDriverLicense.fromJson(Map<String, dynamic> json) {
    return PassportElementDriverLicense(
      driverLicense: IdentityDocument.fromJson(
          json['driver_license'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "driver_license": this.driverLicense.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementDriverLicense';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementIdentityCard extends PassportElement {
  /// A Telegram Passport element containing the user's identity card
  PassportElementIdentityCard({required this.identityCard, this.extra});

  /// [identityCard] Identity card
  IdentityDocument identityCard;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementIdentityCard.fromJson(Map<String, dynamic> json) {
    return PassportElementIdentityCard(
      identityCard: IdentityDocument.fromJson(
          json['identity_card'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "identity_card": this.identityCard.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementIdentityCard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementInternalPassport extends PassportElement {
  /// A Telegram Passport element containing the user's internal passport
  PassportElementInternalPassport({required this.internalPassport, this.extra});

  /// [internalPassport] Internal passport
  IdentityDocument internalPassport;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementInternalPassport.fromJson(Map<String, dynamic> json) {
    return PassportElementInternalPassport(
      internalPassport: IdentityDocument.fromJson(
          json['internal_passport'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "internal_passport": this.internalPassport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementInternalPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementAddress extends PassportElement {
  /// A Telegram Passport element containing the user's address
  PassportElementAddress({required this.address, this.extra});

  /// [address] Address
  Address address;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementAddress.fromJson(Map<String, dynamic> json) {
    return PassportElementAddress(
      address: Address.fromJson(json['address'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "address": this.address.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementUtilityBill extends PassportElement {
  /// A Telegram Passport element containing the user's utility bill
  PassportElementUtilityBill({required this.utilityBill, this.extra});

  /// [utilityBill] Utility bill
  PersonalDocument utilityBill;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementUtilityBill.fromJson(Map<String, dynamic> json) {
    return PassportElementUtilityBill(
      utilityBill: PersonalDocument.fromJson(
          json['utility_bill'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "utility_bill": this.utilityBill.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementUtilityBill';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementBankStatement extends PassportElement {
  /// A Telegram Passport element containing the user's bank statement
  PassportElementBankStatement({required this.bankStatement, this.extra});

  /// [bankStatement] Bank statement
  PersonalDocument bankStatement;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementBankStatement.fromJson(Map<String, dynamic> json) {
    return PassportElementBankStatement(
      bankStatement: PersonalDocument.fromJson(
          json['bank_statement'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bank_statement": this.bankStatement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementBankStatement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementRentalAgreement extends PassportElement {
  /// A Telegram Passport element containing the user's rental agreement
  PassportElementRentalAgreement({required this.rentalAgreement, this.extra});

  /// [rentalAgreement] Rental agreement
  PersonalDocument rentalAgreement;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementRentalAgreement.fromJson(Map<String, dynamic> json) {
    return PassportElementRentalAgreement(
      rentalAgreement: PersonalDocument.fromJson(
          json['rental_agreement'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rental_agreement": this.rentalAgreement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementRentalAgreement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPassportRegistration extends PassportElement {
  /// A Telegram Passport element containing the user's passport registration pages
  PassportElementPassportRegistration(
      {required this.passportRegistration, this.extra});

  /// [passportRegistration] Passport registration pages
  PersonalDocument passportRegistration;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementPassportRegistration.fromJson(
      Map<String, dynamic> json) {
    return PassportElementPassportRegistration(
      passportRegistration: PersonalDocument.fromJson(
          json['passport_registration'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport_registration": this.passportRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPassportRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTemporaryRegistration extends PassportElement {
  /// A Telegram Passport element containing the user's temporary registration
  PassportElementTemporaryRegistration(
      {required this.temporaryRegistration, this.extra});

  /// [temporaryRegistration] Temporary registration
  PersonalDocument temporaryRegistration;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementTemporaryRegistration.fromJson(
      Map<String, dynamic> json) {
    return PassportElementTemporaryRegistration(
      temporaryRegistration: PersonalDocument.fromJson(
          json['temporary_registration'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "temporary_registration": this.temporaryRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementTemporaryRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPhoneNumber extends PassportElement {
  /// A Telegram Passport element containing the user's phone number
  PassportElementPhoneNumber({required this.phoneNumber, this.extra});

  /// [phoneNumber] Phone number
  String phoneNumber;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementPhoneNumber.fromJson(Map<String, dynamic> json) {
    return PassportElementPhoneNumber(
      phoneNumber: json['phone_number'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
    };
  }

  static const CONSTRUCTOR = 'passportElementPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementEmailAddress extends PassportElement {
  /// A Telegram Passport element containing the user's email address
  PassportElementEmailAddress({required this.emailAddress, this.extra});

  /// [emailAddress] Email address
  String emailAddress;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PassportElementEmailAddress.fromJson(Map<String, dynamic> json) {
    return PassportElementEmailAddress(
      emailAddress: json['email_address'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "email_address": this.emailAddress,
    };
  }

  static const CONSTRUCTOR = 'passportElementEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
