import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:hodom/models/all.dart';

Future<All> getAttributes() async {
  final response = await http
      .get('https://api.hodomstore.com/api/products/list?category_id=');
  var res = utf8.decode(response.bodyBytes);
  //print(res);
  if (response.statusCode == 200) {
    final parsed = jsonDecode(res);
    All p = All.fromJson(parsed);
    return p;
  } else {
    throw Exception('asd');
  }
}
