import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_call_ul/components/dial_user_pic.dart';
import 'package:voice_call_ul/constants.dart';
import 'package:voice_call_ul/screens/group_call/components/user_calling_card.dart';
import 'package:voice_call_ul/size_config.dart';

class bodyGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.63,
        //crossAxisSpacing: 5,
        // mainAxisSpacing: 5
      ),
      itemBuilder: (context, index) => demoData[index]["isCalling"]
          ? UserCallingCard(
              image: demoData[index]["image"], name: demoData[index]["name"])
          : Image.asset(
              (demoData[index]['image']),
              fit: BoxFit.cover,
            ),
      itemCount: demoData.length,
    );
  }
}
