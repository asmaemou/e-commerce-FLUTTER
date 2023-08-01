import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/main_header.dart';
import 'package:flutter_application_1/controller/controllers.dart';
import 'package:flutter_application_1/view/home/components/popular_category/popular_category.dart';
import 'package:flutter_application_1/view/home/components/section_title.dart';
import 'components/carousel_slider/carousel_slider_view.dart';
import 'components/popular_category/popular_category_loading.dart';
import 'components/carousel_slider/carousel_loading.dart';

import 'package:logger/logger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const MainHeader(),
        Obx(() {
          if (homeController.bannerList.isNotEmpty) {
            return CarouselSliderView(bannerList: homeController.bannerList);
          } else {
            return const CarouselLoading();
          }
        }),
        const SectionTitle(title: "Popular Category"),
        Obx(() {
           var logger = Logger();
            logger.i('hhhhhhhhhhhhhhhhhhhhh');
            
            logger.i(homeController.popularCategoryList);
            logger.i('hhhhhhhhhhhhhhhhhhhhh2');
          if (homeController.popularCategoryList.isNotEmpty) {
            return PopularCategory(
                categories: homeController.popularCategoryList
            );
          } else {
            return const PopularCategoryLoading();
          }
        }),
      ],
    ));
  }
}