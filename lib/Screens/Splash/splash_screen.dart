// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tarkaribazaar/Screens/OnBoard/on_board1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplasScreenState createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplashScreen> {
  splashTime() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoard1(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    splashTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Login.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Center(
            child: Container(
              height: 220.0,
              width: 220.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/LOGO.jpg'),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
// Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/SplashScreen.jpg'),
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),