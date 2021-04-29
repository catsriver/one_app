import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:one_app/common/constants.dart';

class SplashContent extends StatelessWidget {
  final String image, title, text;

  const SplashContent({
    Key key,
    @required this.image,
    @required this.title,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Spacer(),
        SvgPicture.asset(
          image,
          // 896 is the layout height that designer used.
          height: (270.0 / 896.0) * size.height,
        ),
        Spacer(),
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(height: (kDefaultPadding / 896.0) * size.height),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (kDefaultPadding / 414.0) * size.width * 2),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: kTextLightColor,
            ),
          ),
        ),
      ],
    );
  }
}
