// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

List<AdBanner> AdBannersListFromJson(String val) => List<AdBanner>.from(
  json.decode(val)['data'].map((banner) => AdBanner.fromJson(banner))
);
class AdBanner{
  final int id;
  final String image;
  final String populate;

  AdBanner({
    required this.id,
    required this.image,
    required this.populate,
  });

  factory AdBanner.fromJson(Map<String, dynamic> data) => AdBanner(
    id:data['id'],
    image: data['image'],
    populate:data['populate'],
  );
}