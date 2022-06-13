// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'dart:convert';
import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var h, w;
  var email, password;
  bool IconVisibility = false;
  bool validemail = false;
  bool _isObscure = true;
  bool visiblepassword = false;

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
            child: Stack(
              children: [
                Column(
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
                        "Login Page",
                        style: HungitStyle.HungitsuperHeadTextWhite,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: w * 0.06, right: w * 0.06, top: h * 0.04),
                      child: TextFormField(
                        initialValue: "",
                        onChanged: (value) {
                          email = value;
                          RegExp regex = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if (value.isEmpty) {
                            setState(() {
                              validemail = false;
                            });
                          } else {
                            if (regex.hasMatch(value)) {
                              setState(() {
                                validemail = true;
                              });
                            }
                          }
                          setState(() {
                            email.length == 0
                                ? IconVisibility = false
                                : IconVisibility = true;
                          });
                        },
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        decoration: InputDecoration(
                          fillColor: Color(0xffFFFFFF),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          focusedBorder: new OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          // border: InputBorder.none,
                          hintText: "Enter Email",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          suffixIcon: IconButton(
                            icon: (IconVisibility && validemail)
                                ? Icon(
                                    Icons.check_circle_outline,
                                    size: 20,
                                    color: Colors.green,
                                  )
                                : (IconVisibility && !validemail)
                                    ? Icon(
                                        Icons.highlight_off,
                                        size: 20,
                                        color: Colors.red,
                                      )
                                    : Icon(
                                        Icons.highlight_off,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: w * 0.06, right: w * 0.06, top: h * 0.04),
                      child: TextFormField(
                        obscureText: _isObscure,
                        initialValue: "",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          } else {
                            if (value.length < 8) {
                              return 'Password should be at least 8 character';
                            } else {
                              return null;
                            }
                          }
                        },
                        onChanged: (value) {
                          password = value;
                          setState(() {
                            password.length == 0
                                ? visiblepassword = false
                                : visiblepassword = true;
                          });
                        },
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        decoration: InputDecoration(
                          fillColor: Color(0xffFFFFFF),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                width: 1.2, color: Color(0xffFFFFFF)),
                          ),
                          // border: InputBorder.none,
                          hintText: "Enter Password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          suffixIcon: IconButton(
                            icon: visiblepassword
                                ? _isObscure
                                    ? Icon(
                                        Icons.visibility,
                                        color: Colors.grey,
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      )
                                : Icon(
                                    Icons.ac_unit,
                                    color: Colors.white,
                                  ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        CustomNavigator().navigateTo(
                            context: context, routeName: '/forgotPassword');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: h * 0.02, left: w * 0.48),
                        child: Text(
                          "Forgot Password ? ",
                          style: HungitStyle.HungitDescTextBlack.copyWith(
                              color: Colors.blue),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: h * 0.04),
                      child: CafeCommanComponents().cafeButton(
                          h: h,
                          w: w,
                          title: "Log In",
                          onTap: () {
                            CustomNavigator().navigateTo(
                                context: context, routeName: '/home');
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: h * 0.04),
                      child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: HungitStyle.HungitNormalTextBlack,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Sign Up',
                                  style: HungitStyle.HungitNormalTextBlack
                                      .copyWith(color: Colors.blueAccent),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      CustomNavigator().navigateTo(
                                          context: context,
                                          routeName: '/signup');
                                    })
                            ]),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    CustomNavigator()
                        .navigateTo(context: context, routeName: '/loginType');
                  },
                  child: Container(
                    height: w * 0.12,
                    width: w * 0.12,
                    margin: EdgeInsets.only(left: w * 0.02, top: w * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
