import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:one_app/common/constants.dart';
import 'package:one_app/pages/splash/components/next_button.dart';
import 'package:one_app/pages/splash/components/skip_button.dart';
import 'package:one_app/pages/splash/components/splash_content.dart';
import 'package:one_app/pages/splash/splash_controller.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  itemCount: controller.splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: controller.splashData[index]['image'],
                    title: controller.splashData[index]['title'],
                    text: controller.splashData[index]['text'],
                  ),
                ),
              ),
              SizedBox(height: (kDefaultPadding * 2 / 896.0) * size.height),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (kDefaultPadding / 414.0) * size.width),
                  child: Column(
                    children: [
                      Spacer(flex: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          controller.splashData.length,
                          (index) => buildDot(index),
                        ),
                      ),
                      Spacer(flex: 3),
                      Row(
                        children: [
                          SkipButton(
                            text: 'Skip',
                            press: () => Get.offNamed('/index'),
                          ),
                          Spacer(),
                          NextButton(
                            text: controller.currentPage ==
                                    controller.splashData.length - 1
                                ? 'Start'
                                : 'Next',
                            press: controller.onButtonClicked,
                          )
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5.0),
      width: SplashController.to.currentPage == index ? 20.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: SplashController.to.currentPage == index
            ? kPrimaryColor
            : kIndicatorColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
