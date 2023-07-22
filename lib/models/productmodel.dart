class ProductModel {
  late int id;
  late String title;
  late double price;
  late String description;
  late String category;
  late String image;
  ratingModel rating;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating
  });

  factory ProductModel.FromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'], rating:ratingModel.FromJson( jsonData['rating']));
  }
}

class ratingModel {
  late double rate;
  late int count;
  ratingModel({required this.rate, required this.count});

  factory ratingModel.FromJson(jsonData) {
    return ratingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
