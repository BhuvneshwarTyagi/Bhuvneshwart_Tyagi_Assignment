import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Splash_Screen_2.dart';

class Splash_Screen_1 extends StatefulWidget {
  const Splash_Screen_1({Key? key}) : super(key: key);

  @override
  State<Splash_Screen_1> createState() => _Splash_Screen_1State();
}

class _Splash_Screen_1State extends State<Splash_Screen_1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2),()
    {
      Navigator.pushReplacement(
          context,
          PageTransition(
            child: const Splash_Screen_2(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 500),
            childCurrent: const Splash_Screen_1(),
          )

      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Splash_1.png"),
            fit: BoxFit.fill
          )
        ),
      ),
    );
  }
}
