import 'dart:convert';

import 'package:http/http.dart' as http;

import '../helperapi/api_for_all_methods.dart';

Future<List<dynamic>> getallCategories() async {
  List<dynamic> data =
      await Api().get(url: 'https://fakestoreapi.com/products/categories');

  return data;
}
