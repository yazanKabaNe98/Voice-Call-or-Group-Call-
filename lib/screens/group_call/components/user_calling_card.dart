import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_call_ul/components/dial_user_pic.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class UserCallingCard extends StatelessWidget {
  final String? image;
  final String? name;
  const UserCallingCard({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          dialusePic(
            size: 112,
            image: image,
          ),
          VerticalSpacing(
            of: 10,
          ),
          Text(
            "${name}",
            style: TextStyle(fontSize: 20, color: white),
          ),
          VerticalSpacing(
            of: 10,
          ),
          Text(
            "Calling...",
            style: TextStyle(color: Colors.white60),
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "isCalling": false,
    "name": "user 1",
    "image": "assets/images/goup_call_1.png",
  },
  {
    "isCalling": true,
    "name": "Ali Safi",
    "image": "assets/images/group_call_face_small.png",
  },
  {
    "isCalling": false,
    "name": "user 1",
    "image": "assets/images/group_call_face_3.png",
  },
  {
    "isCalling": false,
    "name": "user 1",
    "image": "assets/images/group_call_face_2.png",
  },
];
