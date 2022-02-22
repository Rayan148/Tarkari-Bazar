// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/Splash/splash_screen.dart';

void main() {
  runApp(TarkariBazaar());
}

class TarkariBazaar extends StatelessWidget {
  TarkariBazaar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
