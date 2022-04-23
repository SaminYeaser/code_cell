// To parse this JSON data, do
//
//     final album = albumFromJson(jsonString);

import 'dart:convert';

Album albumFromJson(String str) => Album.fromJson(json.decode(str));

String albumToJson(Album data) => json.encode(data.toJson());

class Album {
  Album({
    this.statusCode,
    this.data,
    this.token,
  });

  int? statusCode;
  Data? data;
  Token? token;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
    statusCode: json["status_code"],
    data: Data.fromJson(json["data"]),
    token: Token.fromJson(json["token"]),
  );

  Map<String, dynamic> toJson() => {
    "status_code": statusCode,
    "data": data?.toJson(),
    "token": token?.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.username,
    this.phone,
    this.emailVerifiedAt,
    this.promoCode,
    this.verify,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? username;
  String? phone;
  dynamic emailVerifiedAt;
  String? promoCode;
  int? verify;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    username: json["username"],
    phone: json["phone"],
    emailVerifiedAt: json["email_verified_at"],
    promoCode: json["promo_code"],
    verify: json["verify"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "username": username,
    "phone": phone,
    "email_verified_at": emailVerifiedAt,
    "promo_code": promoCode,
    "verify": verify,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class Token {
  Token({
    this.accessToken,
    this.plainTextToken,
  });

  AccessToken? accessToken;
  String? plainTextToken;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
    accessToken: AccessToken.fromJson(json["accessToken"]),
    plainTextToken: json["plainTextToken"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken?.toJson(),
    "plainTextToken": plainTextToken,
  };
}

class AccessToken {
  AccessToken({
    this.name,
    required this.abilities,
    this.tokenableId,
    this.tokenableType,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String? name;
  List<String> abilities;
  int? tokenableId;
  String? tokenableType;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  factory AccessToken.fromJson(Map<String, dynamic> json) => AccessToken(
    name: json["name"],
    abilities: List<String>.from(json["abilities"].map((x) => x)),
    tokenableId: json["tokenable_id"],
    tokenableType: json["tokenable_type"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "abilities": List<dynamic>.from(abilities.map((x) => x)),
    "tokenable_id": tokenableId,
    "tokenable_type": tokenableType,
    "updated_at": updatedAt?.toIso8601String(),
    "created_at": createdAt?.toIso8601String(),
    "id": id,
  };
}
