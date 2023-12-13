class ProductesModel {
  final String title;
  final String description;
  final int id;
  final double price;
  final String image;
  final RatingModel rating;
  ProductesModel(this.description, this.id,
      {required this.image,
      required this.price,
      required this.title,
      required this.rating});

  factory ProductesModel.fromJson(json) {
    return ProductesModel(
      json['description'],
      json['id'],
      image: json['image'],
      price: json['price'],
      title: json['title'],
      rating: RatingModel.fromjson(json['rate']),
    );
  }
}

class RatingModel {
  final double rate;
  final double count;
  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromjson(json) {
    return RatingModel(rate: json['rate'], count: json['count']);
  }
}
