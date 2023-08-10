import 'dart:convert';
import 'tag.dart';


List<Product> popularProductListFromJson(String val) =>
    List<Product>.from(json.decode(val)['data']
        .map((category) => Product.popularProductFromJson(category))
    );

List<Product> productListFromJson(String val) =>
    List<Product>.from(json.decode(val)['data']
        .map((val) => Product.productFromJson(val))
    );

class Product {
  final int id;
  final String libelle;
  final String description;
  final List<String> images;
  final List<Tag> tags;
  final String image;

  Product(
      {required this.id,
      required this.libelle,
      required this.description,
      required this.image,
      required this.images,
      required this.tags
      
      });

  factory Product.popularProductFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      libelle: data['libelle'],
      description: data['description'],
      // images: List<String>.from(data['image']
      //     .map((image) => image['attributes']['url']))
      image: data['image_url'],
      images: [],
      tags: []
      
      );

factory Product.productFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      // name: data['name'],
      description: data['description'],
      libelle: data['libelle'],
      image: data['image_url'],
      images: List<String>.from(data['images']['data']
          .map((image) => image['attributes']['url'])),
      tags: List<Tag>.from(data['tags']['data'].map((val) => Tag.fromJson(val)))
  );
}