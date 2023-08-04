import 'dart:convert';

List<Product> popularProductListFromJson(String val) =>
    List<Product>.from(json.decode(val)['data']
        .map((category) => Product.popularProductFromJson(category))
    );

class Product {
  final int id;
  final String libelle;
  final String description;
  // final List<String> images;
  final String image;

  Product(
      {required this.id,
      required this.libelle,
      required this.description,
      required this.image});

  factory Product.popularProductFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      libelle: data['libelle'],
      description: data['description'],
      // images: List<String>.from(data['image']
      //     .map((image) => image['attributes']['url']))
      image: data['image_url']
      );
}