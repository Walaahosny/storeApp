import '../helperapi/api_for_all_methods.dart';
import '../models/productmodel.dart';

class AddProducts {
  Future<ProductModel> addProducts(
      {required String title,
      required double price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });
    return ProductModel.FromJson(data);
  }
}
