import 'package:get/get.dart';
import 'package:flutter_application_1/model/ad_banner.dart';
import 'package:flutter_application_1/service/remote_service/remote_banner_service.dart';
import 'package:logger/logger.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;

  get popularCategoryList => null;

  @override
  void onInit() {
    getAdBanners();
    super.onInit();
  }

  void getAdBanners() async{
    try{
      isBannerLoading(true);
      var result = await RemoteBannerService().get();
      if (result != null) {
        var logger = Logger();
        logger.i('ggggggggppppppopoogoog');
        logger.i(result.body);
        bannerList.assignAll(AdBannersListFromJson(result.body));
        logger.i('salalalalalalala');
      }
    } finally {
      isBannerLoading(false);
    }
  }
}