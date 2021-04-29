import 'package:get/get.dart';

import './app_routes.dart';
import '../pages/splash_pages.dart';

class AppPages {
  static const String INIT = AppRoutes.SPLASH;

  static var list = [
    GetPage(name: AppRoutes.SPLASH, page: () => SplashPage()),
  ];
}
