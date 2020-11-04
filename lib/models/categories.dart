// To parse this JSON data, do
//
//     final categories = categoriesFromMap(jsonString);

import 'dart:convert';

List<Categories> categoriesFromMap(String str) =>
    List<Categories>.from(json.decode(str).map((x) => Categories.fromMap(x)));

String categoriesToMap(List<Categories> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Categories {
  Categories({
    this.status,
    this.result,
  });

  Status status;
  List<Result> result;

  factory Categories.fromMap(Map<String, dynamic> json) => Categories(
        status: Status.fromMap(json["status"]),
        result: List<Result>.from(json["result"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status.toMap(),
        "result": List<dynamic>.from(result.map((x) => x.toMap())),
      };
}

class Result {
  Result({
    this.id,
    this.name,
    this.image,
  });

  int id;
  String name;
  String image;

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
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

  factory Status.fromMap(Map<String, dynamic> json) => Status(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "message": message,
      };
}
