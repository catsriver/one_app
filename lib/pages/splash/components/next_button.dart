import 'package:flutter/material.dart';

import 'package:one_app/common/constants.dart';

class NextButton extends StatelessWidget {
  final String text;
  final Function press;

  const NextButton({
    Key key,
    this.text,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      // 414 is the layout width that designer used.
      width: (150.0 / 414.0) * size.width,
      height: 50.0,
      child: FlatButton(
        onPressed: press,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(22.0),
            bottomLeft: Radius.circular(22.0),
          ),
        ),
        color: kPrimaryColor,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
