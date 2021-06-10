part of '../tdapi.dart';

class EncryptedPassportElement extends TdObject {
  /// Contains information about an encrypted Telegram Passport element; for bots only
  EncryptedPassportElement(
      {required this.type,
      required this.data,
      required this.frontSide,
      this.reverseSide,
      this.selfie,
      required this.translation,
      required this.files,
      required this.value,
      required this.hash});

  /// [type] Type of Telegram Passport element
  PassportElementType type;

  /// [data] Encrypted JSON-encoded data about the user
  String data;

  /// [frontSide] The front side of an identity document
  DatedFile frontSide;

  /// [reverseSide] The reverse side of an identity document; may be null
  DatedFile? reverseSide;

  /// [selfie] Selfie with the document; may be null
  DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of the document
  List<DatedFile> translation;

  /// [files] List of attached files
  List<DatedFile> files;

  /// [value] Unencrypted data, phone number or email address
  String value;

  /// [hash] Hash of the entire element
  String hash;

  /// Parse from a json
  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) {
    return EncryptedPassportElement(
      type: PassportElementType.fromJson(json['type'] ?? <String, dynamic>{}),
      data: json['data'] ?? "",
      frontSide: DatedFile.fromJson(json['front_side'] ?? <String, dynamic>{}),
      reverseSide:
          DatedFile.fromJson(json['reverse_side'] ?? <String, dynamic>{}),
      selfie: DatedFile.fromJson(json['selfie'] ?? <String, dynamic>{}),
      translation: List<DatedFile>.from((json['translation'] ?? [])
          .map((item) => DatedFile.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      files: List<DatedFile>.from((json['files'] ?? [])
          .map((item) => DatedFile.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      value: json['value'] ?? "",
      hash: json['hash'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "data": this.data,
      "front_side": this.frontSide.toJson(),
      "reverse_side":
          this.reverseSide == null ? null : this.reverseSide!.toJson(),
      "selfie": this.selfie == null ? null : this.selfie!.toJson(),
      "translation": this.translation.map((i) => i.toJson()).toList(),
      "files": this.files.map((i) => i.toJson()).toList(),
      "value": this.value,
      "hash": this.hash,
    };
  }

  static const CONSTRUCTOR = 'encryptedPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
