import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/controllers.dart';
import 'package:flutter_application_1/view/dashboard/home/components/carousel_slider/carousel_loading.dart';
import 'package:flutter_application_1/view/dashboard/home/components/carousel_slider/carousel_slider_view.dart';
import 'package:get/get.dart';
import '../../../component/main_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [MainHeader(),
      Obx(() {
        if(homeController.bannerList.isNotEmpty){
          return CarouselSliderView(
            bannerList: homeController.bannerList
            );
        }else{
          return const CarouselLoading();
        }
      })
      ],
    ));
  }
}
