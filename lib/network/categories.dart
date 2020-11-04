import 'package:flutter/material.dart';
import 'package:hodom/models/categories.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Categories> getCategories() async {
  final response = await http.get(
    'https://api.hodomstore.com/api/list/categories',
  );
  var res = utf8.decode(response.bodyBytes);
  //print(res);
  if (response.statusCode == 200) {
    final parsed = jsonDecode(res);
    Categories p = Categories.fromMap(parsed);
    return p;
  } else {
    throw Exception('asd');
  }
}
