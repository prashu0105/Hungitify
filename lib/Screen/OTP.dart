import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTP extends StatefulWidget {
  OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var h, w;
  var OTP;
  bool IconVisibility = false;
  bool validotp = false;
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
                        "Verify OTP",
                        style: HungitStyle.HungitsuperHeadTextWhite,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: w * 0.06, right: w * 0.06, top: h * 0.04),
                      child: TextFormField(
                        inputFormatters: [
                          new LengthLimitingTextInputFormatter(4),
                        ],
                        initialValue: "",
                        onChanged: (value) {
                          OTP = value;
                          RegExp regex = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if (value.length == 4) {
                            setState(() {
                              validotp = true;
                            });
                          } else {
                            setState(() {
                              validotp = false;
                            });
                          }
                          setState(() {
                            OTP.length == 0
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
                          hintText: "Enter OTP",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          suffixIcon: IconButton(
                            icon: (IconVisibility && validotp)
                                ? Icon(
                                    Icons.check_circle_outline,
                                    size: 20,
                                    color: Colors.green,
                                  )
                                : (IconVisibility && !validotp)
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
                      margin: EdgeInsets.only(top: h * 0.04),
                      child: CafeCommanComponents().cafeButton(
                          h: h,
                          w: w,
                          title: "Verify OTP",
                          onTap: () {
                            CustomNavigator().navigateTo(
                                context: context, routeName: '/updatePassword');
                          }),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    CustomNavigator().navigateTo(
                        context: context, routeName: '/forgotPassword');
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
