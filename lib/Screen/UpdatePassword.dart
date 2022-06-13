import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/material.dart';

class UpdatePassword extends StatefulWidget {
  UpdatePassword({Key? key}) : super(key: key);

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  var h, w;
  var newpassword, confirmpassword;
  bool _isObscure = true;
  bool visiblepassword = false;
  bool _isObscure1 = true;
  bool visiblepassword1 = false;
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
                        "Update Password",
                        style: HungitStyle.HungitsuperHeadTextWhite,
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
                          newpassword = value;
                          setState(() {
                            newpassword.length == 0
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
                    Container(
                      margin: EdgeInsets.only(
                          left: w * 0.06, right: w * 0.06, top: h * 0.04),
                      child: TextFormField(
                        obscureText: _isObscure1,
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
                          confirmpassword = value;
                          setState(() {
                            confirmpassword.length == 0
                                ? visiblepassword1 = false
                                : visiblepassword1 = true;
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
                          hintText: "Enter Confirm Password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          suffixIcon: IconButton(
                            icon: visiblepassword1
                                ? _isObscure1
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
                                _isObscure1 = !_isObscure1;
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
                          title: "Update Password",
                          onTap: () {
                            CustomNavigator().navigateTo(
                                context: context, routeName: '/login');
                          }),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    CustomNavigator()
                        .navigateTo(context: context, routeName: '/otp');
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
