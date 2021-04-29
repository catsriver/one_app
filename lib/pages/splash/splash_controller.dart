import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  PageController pageController;
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Meeting Online",
      "text":
          "Stay home and complete all of your importance work and meeting for keeping safe you and your family member",
      "image": "assets/images/slider1.svg"
    },
    {
      "title": "Wear a Mask",
      "text":
          "When you go outside of your home then obiously you have to wear a mask for keeping safe from covid-19",
      "image": "assets/images/slider2.svg"
    },
    {
      "title": "Social Distance",
      "text":
          "By maintaining social distance you can kep safe from other covid virus affected people and keep safe from covid-19",
      "image": "assets/images/slider3.svg"
    },
  ];

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  void onPageChanged(int index) {
    currentPage = index;
    update();
  }

  void onButtonClicked() {
    if (currentPage != splashData.length - 1) {
      pageController.animateToPage(
        currentPage + 1,
        duration: kThemeAnimationDuration,
        curve: Curves.linear,
      );
    } else {
      Get.offNamed('/index');
    }
  }
}
