import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_call_ul/components/rounded_button.dart';
import 'package:voice_call_ul/screens/audio_call_with_image/audio_call_with_image.dart';
import 'package:voice_call_ul/screens/dial_screen/components/dial_buttton.dart';
import 'package:voice_call_ul/components/dial_user_pic.dart';
import 'package:voice_call_ul/constants.dart';
import 'package:voice_call_ul/screens/group_call/group_call_screen.dart';
import 'package:voice_call_ul/size_config.dart';

class bodyDial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Yazan Kabane",
              style:
                  Theme.of(context).textTheme.headline4!.copyWith(color: white),
            ),
            SizedBox(
              height: 10,
            ),
            Text("calling...", style: TextStyle(color: white)),
            SizedBox(
              height: 20,
            ),
            dialusePic(
              image: "assets/images/calling_face.png",
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  DialButton(
                    iconImage: Icons.mic,
                    press: () {},
                    textIcon: "Audio",
                  ),
                  DialButton(
                    iconImage: Icons.volume_down,
                    press: () {},
                    textIcon: "Microphone",
                  ),
                  DialButton(
                    iconImage: Icons.video_call,
                    press: () {},
                    textIcon: "Video",
                  ),
                  DialButton(
                    iconImage: Icons.message,
                    press: () {},
                    textIcon: "Message",
                  ),
                  DialButton(
                    iconImage: Icons.person_add_alt_1_outlined,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroupCallScreen()));
                    },
                    textIcon: "Add Contact",
                  ),
                  DialButton(
                    iconImage: Icons.mark_email_read_outlined,
                    press: () {},
                    textIcon: "Voice mail",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: RoundedButton(
                      color: kredColor,
                      iconColor: white,
                      iconSrc: Icons.call_end,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioCallWithImage()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class dialButton extends StatelessWidget {
//   final VoidCallback? press;
//   final String? textIcon;
//   final double? size;
//   final IconData iconImage;
//   const dialButton(
//       {required this.press,
//       required this.iconImage,
//       required this.textIcon,
//       this.size});

//   @override
//   Widget build(BuildContext context) {
//     SizedBox(
//       width: getProportionateScreenWidth(120),
//     );
//     return MaterialButton(
//         padding:
//             EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
//         onPressed: press,
//         child: Column(
//           children: [
//             Icon(
//               iconImage,
//               size: 50,
//               color: Colors.white54,
//             ),
//             VerticalSpacing(
//               of: 10,
//             ),
//             Text(
//               " ${textIcon}",
//               style: TextStyle(fontSize: 20, color: white),
//             )
//           ],
//         ));
//   }
// }
