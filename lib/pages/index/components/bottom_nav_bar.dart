import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:one_app/common/constants.dart';
import '../index_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: IndexController.to.switchTabBar,
      currentIndex: IndexController.to.currentIndex,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kTextLightColor,
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      elevation: .0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.sportscourt),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.bell),
          label: 'Alerts',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: 'Account',
        ),
      ],
    );
  }
}
