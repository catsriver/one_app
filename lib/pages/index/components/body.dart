import 'package:flutter/material.dart';

import '../index_controller.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: IndexController.to.pageController,
      itemCount: IndexController.to.pages.length,
      itemBuilder: (context, index) => IndexController.to.pages[index],
    );
  }
}
