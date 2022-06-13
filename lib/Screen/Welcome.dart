// ignore_for_file: file_names

import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:Hungitify/Screen/log_in.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MyWelcome extends StatefulWidget {
  MyWelcome({Key? key}) : super(key: key);

  @override
  _MyWelcomeState createState() => _MyWelcomeState();
}

class _MyWelcomeState extends State<MyWelcome> {
  var h, w;

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/images/Slide1.png"),
        title: "Food By Professional Chef",
        body:
            "We make it simple to make the \nfood you look. Select dish \nand let us do reset.",
      ),
      PageViewModel(
        image: Image.asset("assets/images/Slide2.png"),
        title: "Order your favourite",
        body:
            "When you order food, we will \ncook you up with exclusive coupons, \nspecial and rewards",
      ),
      PageViewModel(
        image: Image.asset("assets/images/Slide3.png"),
        title: "Hang out with Buddies",
        body:
            "We make Family , Friend \nand loved one meet up at \nSingle Destination.",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          // decoration: BoxDecoration(
          //   color: FareColor().fareWhite,
          // ),
          margin: EdgeInsets.only(top: h * 0.08),
          child: IntroductionScreen(
              done: Container(
                  height: h * 0.04,
                  width: w * 0.8,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: HungitColor.HungitYellow,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Done",
                      style: HungitStyle.HungitNormalTextBlack,
                    ),
                  )),
              onDone: () {
                CustomNavigator()
                    .navigateTo(context: context, routeName: '/loginType');
              },
              pages: getPages(),
              onSkip: () {
                CustomNavigator()
                    .navigateTo(context: context, routeName: '/loginType');
              },
              showSkipButton: true,
              skip: Text(
                "Skip",
                style: HungitStyle.HungitNormalTextBlack,
              ),
              next: Container(
                height: w * 0.14,
                width: w * 0.14,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: HungitColor.HungitYellow,
                  borderRadius: BorderRadius.circular(100),
                ),
                // ignore: prefer_const_constructors
                child: Center(
                  child: Text(
                    "Next",
                    style: HungitStyle.HungitNormalTextBlack,
                  ),
                ),
              ),
              dotsDecorator: DotsDecorator(
                size: const Size(20.0, 8.0),
                activeSize: const Size(40.0, 8.0),
                // activeColor: theme.accentColor,
                color: Colors.black26,
                activeColor: HungitColor.HungitYellow,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              )),
        ),
      ),
      // child: Scaffold(
      //   body: Container(
      //     child: Column(
      //       children: [
      //         CarouselSlider(
      //           options: CarouselOptions(
      //               aspectRatio: 9 / 16, viewportFraction: 1.0, autoPlay: true),
      //           items: [
      //             "assets/images/Slide1.png",
      //             "assets/images/Slide2.png",
      //           ].map((i) {
      //             return Builder(
      //               builder: (BuildContext context) {
      //                 return Container(
      //                     width: MediaQuery.of(context).size.width,
      //                     margin: EdgeInsets.symmetric(horizontal: 5.0),
      //                     decoration: BoxDecoration(color: Colors.amber),
      //                     child: Image.asset(i));
      //               },
      //             );
      //           }).toList(),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(top: h * 0.04),
      //           child: CafeCommanComponents().cafeButton(
      //               w: w,
      //               title: "Lets Get Started!",
      //               onTap: () {
      //                 CustomNavigator()
      //                     .navigateTo(context: context, routeName: '/login');
      //               }),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
