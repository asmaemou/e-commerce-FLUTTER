import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PopularCategoryCard extends StatelessWidget {
  final Category category;
  const PopularCategoryCard({Key? key,
  required this.category
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
      child:   CachedNetworkImage(
        // imageUrl: baseUrl + category.image,
        imageUrl:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hawksviewgolfclub.com%2Fgolf-course%2F&psig=AOvVaw2GYEzwZ9BauHDm1ZEHCo-b&ust=1690630059179000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPDMivOlsYADFQAAAAAdAAAAABAE',
        imageBuilder: (context, imageProvider) => Material(
          elevation: 8,
          shadowColor: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 270,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover)
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                // category.name,
                "Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
        placeholder: (context, url) => Material(
          elevation: 8,
          shadowColor: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.white,
            child: Container(
              width: 270,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Material(
          elevation: 8,
          shadowColor: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 270,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)
            ),
            child: const Center(
              child: Icon(
                Icons.error_outline,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}