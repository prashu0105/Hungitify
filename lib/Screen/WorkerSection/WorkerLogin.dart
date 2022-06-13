import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WorkerLogin extends StatefulWidget {
  WorkerLogin({Key? key}) : super(key: key);

  @override
  State<WorkerLogin> createState() => _WorkerLoginState();
}

class _WorkerLoginState extends State<WorkerLogin> {
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
                  child: CafeCommanComponents().cafeButton(
                      h: h,
                      w: w,
                      title: "Log In",
                      onTap: () {
                        CustomNavigator()
                            .navigateTo(context: context, routeName: '/home');
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
