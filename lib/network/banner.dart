import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:hodom/models/banner.dart';

Future<Banners> getAttributes() async {
  final response = await http.get('https://api.hodomstore.com/api/list/ads');
  var res = utf8.decode(response.bodyBytes);
  //print(res);
  if (response.statusCode == 200) {
    final parsed = jsonDecode(res);
    Banners p = Banners.fromJson(parsed);
    return p;
  } else {
    throw Exception('asd');
  }
}
