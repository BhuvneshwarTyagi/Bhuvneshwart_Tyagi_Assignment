import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_1/Pages/Splash_screen_1.dart';

import 'Home_Screen.dart';
import 'Pages/Walkthrough_11.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    void initState() {
      // TODO: implement initState
      super.initState();
      Timer.periodic(const Duration(milliseconds: 0), (timer) {
        if(mounted){
          setState(() {

          });
        }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (_, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Walkthrough_11();
        } else if (snapshot.connectionState == ConnectionState.active && !snapshot.hasData) {
          return const Walkthrough_11();
        } else if (snapshot.connectionState == ConnectionState.active && snapshot.hasData)
        {
          return home_screen();
        }
        else{
          return const Walkthrough_11();}
      },

    );
  }
}
