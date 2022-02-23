import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DialButton extends StatelessWidget {
  final VoidCallback? press;
  final String? textIcon;
  final double? size;
  final IconData? iconImage;
  const DialButton(
      {required this.press,
      required this.iconImage,
      required this.textIcon,
      this.size});

  @override
  Widget build(BuildContext context) {
    SizedBox(
      width: getProportionateScreenWidth(120),
    );
    return MaterialButton(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
        onPressed: press,
        child: Column(
          children: [
            Icon(
              iconImage,
              size: 50,
              color: Colors.white54,
            ),
            VerticalSpacing(
              of: 10,
            ),
            Text(
              "${textIcon}",
              style: TextStyle(fontSize: 13, color: white),
            )
          ],
        ));
  }
}
