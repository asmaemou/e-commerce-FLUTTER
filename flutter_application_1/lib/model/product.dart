import 'dart:convert';
// import 'tag.dart';


List<Product> popularProductListFromJson(String val) =>
    List<Product>.from(json.decode(val)['data']
        .map((product) => Product.popularProductFromJson(product))
    );

List<Product> productListFromJson(String val) =>
    List<Product>.from(json.decode(val)['data']
        .map((val) => Product.productFromJson(val))
    );

class Product {
  final int id;
  final String libelle;
  final String description;
  final String image;
  final List<String> images;
  final double price;
  // final List<Tag> tags;
  

  Product(
      {required this.id,
      required this.libelle,
      required this.description,
      required this.image,
      required this.images,
      required this.price,
      // required this.tags
      
      });

  factory Product.popularProductFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      libelle: data['libelle'],
      description: data['description'],
      // images: List<String>.from(data['image']
      //     .map((image) => image['attributes']['url']))
      image: data['image_url'],
      images: [],
      price: 12,
      // tags: []
      
      );

factory Product.productFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      // name: data['name'],
      description: data['description'],
      libelle: data['libelle'],
      image: data['image_url'],
      price: data['price'],
      images: List<String>.from(data['images'].map((image) => image['url'])),
      // tags: List<Tag>.from(data['tags'].map((val) => Tag.fromJson(val)))
      // Product.fromJson(jsonDecode(response.body) as Map<String, dynamic>);

      // tags: []
  );
}