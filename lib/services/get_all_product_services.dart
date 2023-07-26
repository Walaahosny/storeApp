import 'dart:convert';


import '../helperapi/api_for_all_methods.dart';
import '../models/productmodel.dart';

Future<List<ProductModel>> getallproduct() async {
  List<dynamic> data =
      await Api().get(url: 'https://fakestoreapi.com/products');

  List<ProductModel> allProductList = [];
  print(allProductList);
  for (int i = 0; i < data.length; i++) {
    allProductList.add(ProductModel.FromJson(data[i]));
  }
  return allProductList;
}
