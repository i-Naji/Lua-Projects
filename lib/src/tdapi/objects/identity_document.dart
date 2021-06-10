part of '../tdapi.dart';

class IdentityDocument extends TdObject {
  /// An identity document
  IdentityDocument(
      {required this.number,
      this.expiryDate,
      required this.frontSide,
      required this.reverseSide,
      this.selfie,
      required this.translation});

  /// [number] Document number; 1-24 characters
  String number;

  /// [expiryDate] Document expiry date; may be null
  Date? expiryDate;

  /// [frontSide] Front side of the document
  DatedFile frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and identity card
  DatedFile reverseSide;

  /// [selfie] Selfie with the document; may be null
  DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of the document
  List<DatedFile> translation;

  /// Parse from a json
  factory IdentityDocument.fromJson(Map<String, dynamic> json) {
    return IdentityDocument(
      number: json['number'] ?? "",
      expiryDate: Date.fromJson(json['expiry_date'] ?? <String, dynamic>{}),
      frontSide: DatedFile.fromJson(json['front_side'] ?? <String, dynamic>{}),
      reverseSide:
          DatedFile.fromJson(json['reverse_side'] ?? <String, dynamic>{}),
      selfie: DatedFile.fromJson(json['selfie'] ?? <String, dynamic>{}),
      translation: List<DatedFile>.from((json['translation'] ?? [])
          .map((item) => DatedFile.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "number": this.number,
      "expiry_date": this.expiryDate == null ? null : this.expiryDate!.toJson(),
      "front_side": this.frontSide.toJson(),
      "reverse_side": this.reverseSide.toJson(),
      "selfie": this.selfie == null ? null : this.selfie!.toJson(),
      "translation": this.translation.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'identityDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}
