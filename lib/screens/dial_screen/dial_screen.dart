import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:voice_call_ul/constants.dart';

import 'components/body_dial.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: bodyDial(),
    );
  }
}
