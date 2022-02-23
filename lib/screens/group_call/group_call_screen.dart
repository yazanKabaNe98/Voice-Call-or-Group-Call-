import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_call_ul/components/rounded_button.dart';
import 'package:voice_call_ul/constants.dart';
import 'package:voice_call_ul/screens/dial_screen/dial_screen.dart';

import 'components/body_group.dart';

class GroupCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DialScreen()));
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_add,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
      body: bodyGroup(),
      bottomNavigationBar: bottmNavicationBar(),
    );
  }
}

class bottmNavicationBar extends StatelessWidget {
  const bottmNavicationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RoundedButton(
                  iconColor: white,
                  color: Colors.red,
                  press: () {},
                  iconSrc: Icons.close,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                RoundedButton(
                  iconColor: white,
                  color: Colors.grey,
                  press: () {},
                  iconSrc: Icons.volume_down,
                  size: 0,
                ),
                SizedBox(
                  width: 10,
                ),
                RoundedButton(
                  iconColor: white,
                  color: Colors.grey,
                  press: () {},
                  iconSrc: Icons.mic,
                  size: 0,
                ),
                SizedBox(
                  width: 10,
                ),
                RoundedButton(
                  iconColor: white,
                  color: Colors.grey,
                  press: () {},
                  iconSrc: Icons.repeat,
                  size: 0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
