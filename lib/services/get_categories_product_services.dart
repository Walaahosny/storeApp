import 'dart:convert';

import '../helperapi/api_for_all_methods.dart';
import '../models/productmodel.dart';

Future<List<ProductModel>?> getCategoriesProduct(
    {required String categoryName}) async {
  List<dynamic> data = await Api()
      .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
  List<ProductModel> getAllCategoriesproductlist = [];
  for (int i = 0; i < data.length; i++) {
    getAllCategoriesproductlist.add(ProductModel.FromJson(data[i]));
    return getAllCategoriesproductlist;
  }
}
