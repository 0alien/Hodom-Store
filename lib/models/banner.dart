// To parse this JSON data, do
//
//     final banners = bannersFromJson(jsonString);

import 'dart:convert';

List<Banners> bannersFromJson(String str) =>
    List<Banners>.from(json.decode(str).map((x) => Banners.fromJson(x)));

String bannersToJson(List<Banners> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Banners {
  Banners({
    this.status,
    this.result,
  });

  Status status;
  List<Result> result;

  factory Banners.fromJson(Map<String, dynamic> json) => Banners(
        status: Status.fromJson(json["status"]),
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status.toJson(),
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.id,
    this.ad,
    this.image,
  });

  int id;
  String ad;
  String image;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        ad: json["ad"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ad": ad,
        "image": image,
      };
}

class Status {
  Status({
    this.code,
    this.message,
  });

  int code;
  String message;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
