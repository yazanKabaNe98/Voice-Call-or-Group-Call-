import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_call_ul/screens/dial_screen/dial_screen.dart';

import 'package:voice_call_ul/size_config.dart';

import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it help use to make ul responsive
    SizeConfig().init(context);
    return Scaffold(
      body: body(),
    );
  }
}
