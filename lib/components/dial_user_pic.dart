import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class dialusePic extends StatelessWidget {
  final String? image;
  final double size = 192;
  const dialusePic({required this.image, size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30 / 192 * size),
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            Colors.white.withOpacity(0.02),
            Colors.white.withOpacity(0.05)
          ], stops: [
            0.5,
            1
          ])),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(
          image!,
        ),
      ),
    );
  }
}
