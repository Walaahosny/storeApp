import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/productmodel.dart';

Future<List<ProductModel>> getallproduct() async {
  http.Response response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));
  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> allProductList = [];
    print(allProductList);
    for (int i = 0; i < data.length; i++) {
      allProductList.add(ProductModel.FromJson(data[i]));
    }
    return allProductList;
  } else {
    throw Exception('there is a problem in status code ${response.statusCode}');
  }

}
