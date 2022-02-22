// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tarkaribazaar/Screens/Home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/veg.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(55.0, 55.0, 55.0, 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(110, 200, 110, .6),
                        blurRadius: 30.0,
                        offset: Offset(0, -5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email or Username',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(70, 225, 70, .5),
                  fixedSize: Size(200.0, 40.0),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
