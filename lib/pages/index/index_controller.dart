import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';
import '../news/news_page.dart';
import '../alerts/alerts_page.dart';
import '../account/account_page.dart';

class IndexController extends GetxController {
  static IndexController get to => Get.find();

  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    NewsPage(),
    AlertsPage(),
    AccountPage(),
  ];

  PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = (pageController.page).round();
      update();
    });
    super.onInit();
  }

  void switchTabBar(int index) {
    currentIndex = index;
    update();
    pageController.jumpToPage(index);
  }
}
