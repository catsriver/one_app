import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import './index_controller.dart';
import './components/bottom_nav_bar.dart';
import './components/body.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IndexController>(
      init: IndexController(),
      builder: (controller) {
        return Scaffold(
          body: Body(),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
