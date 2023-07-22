import 'dart:convert';

import '../models/productmodel.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>?> getCategoriesProduct(
    {required String categoryName}) async {
  http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> getAllCategoriesproductlist = [];
    for (int i = 0; i < data.length; i++) {
      getAllCategoriesproductlist.add(ProductModel.FromJson(data[i]));
      return getAllCategoriesproductlist;
    }
  } else {
    throw Exception('there is a problem in status code ${response.statusCode}');
  }
}
