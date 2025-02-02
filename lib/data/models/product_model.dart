import 'package:elevate_test/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required super.id,
    required super.title,
    required super.price,
    required super.description,
    required super.image,
    required super.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] != null ? json['id'] as int : 0,
      title: json['title'] != null ? json['title'] as String : "No title",
      price: json['price'] != null ? (json['price'] as num).toDouble() : 0.0,
      description: json['description'] != null ? json['description'] as String : "No description",
      image: json['image'] != null ? json['image'] as String : "",
      rating: (json['rating'] != null && json['rating']['rate'] != null)
          ? (json['rating']['rate'] as num).toDouble()
          : 0.0,
    );
  }
}
