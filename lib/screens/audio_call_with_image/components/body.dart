import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_call_ul/components/rounded_button.dart';
import 'package:voice_call_ul/constants.dart';
import 'package:voice_call_ul/screens/dial_screen/dial_screen.dart';
import 'package:voice_call_ul/size_config.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image(
          image: AssetImage('assets/images/full_image.png'),
          fit: BoxFit.cover,
        ),

        ///black layer
        DecoratedBox(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3))),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dania\nNajjar",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white)),
                VerticalSpacing(of: 10),
                Text(
                  "incoming 2:00".toUpperCase(),
                  style: TextStyle(color: Colors.white60),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButton(
                      press: () {},
                      color: white,
                      iconSrc: Icons.mic,
                      iconColor: Colors.black,
                    ),
                    RoundedButton(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DialScreen()));
                      },
                      color: kredColor,
                      iconSrc: Icons.call_end,
                      iconColor: Colors.white,
                    ),
                    RoundedButton(
                      press: () {},
                      color: white,
                      iconSrc: Icons.volume_up,
                      iconColor: Colors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
