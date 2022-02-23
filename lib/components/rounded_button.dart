import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  final double size = 64;
  final IconData? iconSrc;
  final Color? color, iconColor;
  final VoidCallback? press;
  const RoundedButton(
      {Key? key,
      size,
      required this.iconColor,
      required this.color,
      required this.iconSrc,
      required this.press});

  @override
  Widget build(BuildContext context) {
    SizedBox(
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
    );
    return MaterialButton(
        padding: EdgeInsets.all(15 / 64 * size),
        color: color,
        shape:
            RoundedRectangleBorder(borderRadius: (BorderRadius.circular(100))),
        onPressed: press,
        child: Icon(
          iconSrc,
          color: iconColor,
          size: 20,
        ));
  }
}
