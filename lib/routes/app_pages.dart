import 'package:get/get.dart';

import './app_routes.dart';
import '../pages/splash/splash_page.dart';
import '../pages/index/index_page.dart';

class AppPages {
  static const String INIT = AppRoutes.SPLASH;

  static var list = [
    GetPage(name: AppRoutes.SPLASH, page: () => SplashPage()),
    GetPage(name: AppRoutes.INDEX, page: () => IndexPage()),
  ];
}
