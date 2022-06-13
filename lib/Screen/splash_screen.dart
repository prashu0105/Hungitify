// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var w, h;
  startTime() {
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, '/welcome'));
    // Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (BuildContext context) => MyWelcome())));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
              //  gradient: LinearGradient(
              //               begin: Alignment.bottomLeft,
              //               end: Alignment.topRight,
              //               // Add one stop for each color
              //               // Values should increase from 0.0 to 1.0
              //               stops: [0.1, 0.5, 0.8, 0.9],
              //               colors: [Colors.red, Colors.yellow, Colors.blue, Colors.purple]),
              //  image: DecorationImage(image: AssetImage("assets/images/Splash.png"),
              //  fit: BoxFit.cover,
              //  ),
              color: Color(0xffF8BF0F)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: h * 0.2,
                  width: h * 0.2,
                  child: Image.asset("assets/images/Logo.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
