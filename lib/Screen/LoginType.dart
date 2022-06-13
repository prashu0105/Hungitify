import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/material.dart';

class LoginType extends StatefulWidget {
  LoginType({Key? key}) : super(key: key);

  @override
  State<LoginType> createState() => _LoginTypeState();
}

class _LoginTypeState extends State<LoginType> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: h * 0.964,
            width: w,
            color: HungitColor.HungitCreme,
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: h * 0.08),
                    height: h * 0.2,
                    width: h * 0.2,
                    child: Image.asset("assets/images/Logo.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: h * 0.06),
                  child: Text(
                    "Welcome to Hungitify",
                    style: HungitStyle.HungitHeadTextBlack,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: h * 0.04),
                  child: CafeCommanComponents().cafeButton(
                      h: h,
                      w: w,
                      title: "LogIn as User",
                      onTap: () {
                        CustomNavigator()
                            .navigateTo(context: context, routeName: '/login');
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(top: h * 0.04),
                  child: CafeCommanComponents().cafeButton(
                      h: h,
                      w: w,
                      title: "LogIn as Worker",
                      onTap: () {
                        CustomNavigator().navigateTo(
                            context: context, routeName: '/workerLogin');
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
