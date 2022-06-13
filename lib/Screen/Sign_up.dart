// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'dart:convert';
import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var h, w;
  var name, email, password, phone;
  bool validname = false;
  bool IconVisibilityname = false;
  bool validphone = false;
  bool IconVisibilityphone = false;
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
        body: Container(
          height: h,
          width: w,
          color: HungitColor.HungitCreme,
          child: ListView(
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
                child: Center(
                  child: Text(
                    "Sign up Page",
                    style: HungitStyle.HungitHeadTextBlack,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.06, right: w * 0.06, top: h * 0.04),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  initialValue: "",
                  onChanged: (value) {
                    name = value;
                    if (value.length < 3) {
                      setState(() {
                        validname = false;
                      });
                    } else {
                      setState(() {
                        validname = true;
                      });
                    }

                    setState(() {
                      name.length == 0
                          ? IconVisibilityname = false
                          : IconVisibilityname = true;
                    });
                  },
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  decoration: InputDecoration(
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // borderRadius: new BorderRadius.circular(25.0),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    // border: InputBorder.none,
                    hintText: "Enter Username",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    suffixIcon: IconButton(
                      icon: (IconVisibilityname && validname)
                          ? Icon(
                              Icons.check_circle_outline,
                              size: 20,
                              color: Colors.green,
                            )
                          : (IconVisibilityname && !validname)
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
                  keyboardType: TextInputType.phone,
                  initialValue: "",
                  onChanged: (value) {
                    phone = value;
                    if (value.length != 10) {
                      setState(() {
                        validphone = false;
                      });
                    } else {
                      setState(() {
                        validphone = true;
                      });
                    }

                    setState(() {
                      phone.length == 0
                          ? IconVisibilityphone = false
                          : IconVisibilityphone = true;
                    });
                  },
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  decoration: InputDecoration(
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // borderRadius: new BorderRadius.circular(25.0),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    // border: InputBorder.none,
                    hintText: "Enter Mobile Nuber",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    suffixIcon: IconButton(
                      icon: (IconVisibilityphone && validphone)
                          ? Icon(
                              Icons.check_circle_outline,
                              size: 20,
                              color: Colors.green,
                            )
                          : (IconVisibilityphone && !validphone)
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
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // borderRadius: new BorderRadius.circular(25.0),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    // border: InputBorder.none,
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
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
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      // borderRadius: new BorderRadius.circular(25.0),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(width: 1.2, color: Color(0xffFFFFFF)),
                    ),
                    // border: InputBorder.none,
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
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
              Container(
                margin: EdgeInsets.only(top: h * 0.04),
                child: CafeCommanComponents()
                    .cafeButton(w: w, title: "Sign up", onTap: () {}),
              ),
              Container(
                margin: EdgeInsets.only(top: h * 0.04),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: HungitStyle.HungitNormalTextBlack,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Log In',
                              style: HungitStyle.HungitNormalTextBlack.copyWith(
                                  color: Colors.blueAccent),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  CustomNavigator().navigateTo(
                                      context: context, routeName: '/login');
                                })
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
