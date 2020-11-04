// To parse this JSON data, do
//
//     final all = allFromJson(jsonString);

import 'dart:convert';

List<All> allFromJson(String str) =>
    List<All>.from(json.decode(str).map((x) => All.fromJson(x)));

String allToJson(List<All> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class All {
  All({
    this.status,
    this.results,
  });

  Status status;
  List<Result> results;

  factory All.fromJson(Map<String, dynamic> json) => All(
        status: Status.fromJson(json["status"]),
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status.toJson(),
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.id,
    this.name,
    this.price,
    this.strikeOut,
    this.minItems,
    this.images,
    this.cart,
  });

  int id;
  String name;
  int price;
  String strikeOut;
  String minItems;
  String images;
  List<dynamic> cart;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        strikeOut: json["strike_out"],
        minItems: json["min_items"],
        images: json["images"],
        cart: List<dynamic>.from(json["cart"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "strike_out": strikeOut,
        "min_items": minItems,
        "images": images,
        "cart": List<dynamic>.from(cart.map((x) => x)),
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
