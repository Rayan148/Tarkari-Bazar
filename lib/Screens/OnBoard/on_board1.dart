// ignore_for_file: prefer_const_constructors

//this is done using sk_onboarding_model.

import 'package:flutter/material.dart';

import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';
import 'package:tarkaribazaar/Screens/Home/home_page.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({Key? key}) : super(key: key);

  @override
  _OnBoard1State createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SKOnboardingScreen(
            pages: pages,
            bgColor: Colors.white,
            themeColor: Colors.lightGreen,
            skipClicked: skip,
            getStartedClicked: getStart),
      ),
    );
  }

  skip(value) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  getStart(value) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
      title: 'What do you want?',
      description: 'Welcome to Tarkari-Bazar',
      imagePath: 'assets/images/Onboard_1.jpg',
      titleColor: Colors.lightGreen,
      descripColor: Colors.lightGreen,
    ),
    SkOnboardingModel(
      title: 'Order online',
      description:
          'You have no time to visit market? We are here. Why not order from home.',
      imagePath: 'assets/images/Onboard_2.jpg',
      titleColor: Colors.lightGreen,
      descripColor: Colors.lightGreen,
    ),
    SkOnboardingModel(
      title: 'Delivery?',
      description:
          'Do you want to get your vegetables delivered at your home? We are here.',
      imagePath: 'assets/images/Onboard_3.jpg',
      titleColor: Colors.lightGreen,
      descripColor: Colors.lightGreen,
    ),
  ];
}
