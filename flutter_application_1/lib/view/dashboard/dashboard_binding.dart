import 'package:flutter_application_1/controller/dashboard_controller.dart';
import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:flutter_application_1/controller/product_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies(){
    Get.put(DashboardController());
    Get.put(HomeController());
    Get.put(ProductController());
  }
}