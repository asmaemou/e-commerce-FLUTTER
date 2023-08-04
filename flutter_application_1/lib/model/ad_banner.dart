// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:hive/hive.dart';
// import 'ad_banner.g.dart';
// import 'package:logger/logger.dart';


List<AdBanner> AdBannersListFromJson(String val) => List<AdBanner>.from(
  
  json.decode(val)['data'].map((banner) => AdBanner.fromJson(banner))
);
@HiveType(typeId: 1)
class AdBanner{
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String image;
  final bool populate;

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