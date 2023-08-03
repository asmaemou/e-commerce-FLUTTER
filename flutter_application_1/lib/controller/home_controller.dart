import 'package:get/get.dart';
import 'package:flutter_application_1/model/ad_banner.dart';
import 'package:flutter_application_1/model/category.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/service/remote_service/remote_banner_service.dart';
import 'package:flutter_application_1/service/remote_service/remote_popular_category_service.dart';

// import 'package:logger/logger.dart';
import '../service/local_service/local_category_service.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  // RxList<Category> popularCategoryList = List<Category>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;
  RxBool isPopularCategoryLoading = false.obs;
  final LocalCategoryService _localCategoryService = LocalCategoryService();
  
  RxList<Category> popularCategoryList = List<Category>.empty(growable: true).obs;
  // RxList<Category> popularProductList = List<Category>.empty(growable: true).obs;
    RxList<Product> popularProductList = List<Product>.empty(growable: true).obs;





  @override
  void onInit() {
    getAdBanners();
    getPopularCategories();
    super.onInit();
  }

  void getAdBanners() async{
    try{
      isBannerLoading(true);
      var result = await RemoteBannerService().get();
      if (result != null) {
        // var logger = Logger();
        // logger.i('ggggggggppppppopoogoog');
        // logger.i(result.body);
        bannerList.assignAll(AdBannersListFromJson(result.body));
        // logger.i('salalalalalalala');
      }
    } finally {
      isBannerLoading(false);
    }
  }

  void getPopularCategories() async {
    try {
      isPopularCategoryLoading(true);
      // if (_localCategoryService.getPopularCategories().isNotEmpty) {
      //   popularCategoryList
      //       .assignAll(_localCategoryService.getPopularCategories());
      // }
      var result = await RemotePopularCategoryService().get();
      if (result != null) {
        // popularCategoryList.assignAll(popularCategoryListFromJson(result.body));
        // _localCategoryService.assignAllPopularCategories(
        //     popularCategories: popularCategoryListFromJson(result.body));
        popularCategoryList.assignAll(popularCategoryListFromJson(result.body));
      }
    } finally {
      isPopularCategoryLoading(false);
    }


  }

}