
import '../view/dashboard/dashborad_screen.dart';
import 'app_route.dart';
import 'package:get/get.dart';

class AppPage{
  static var list = [
    GetPage(name: AppRoute.dashboard, page: () => const DashboardScreen())
  ];
  
}