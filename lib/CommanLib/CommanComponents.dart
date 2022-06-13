// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore

import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CafeCommanComponents {
  // ignore: non_constant_identifier_names
  Widget cafeTextField(
    w,
    h,
    hint,
    text,
  ) {
    return Container(
      width: w * 0.8,
      height: h * 0.06,
      padding: EdgeInsets.all(w * 0.04),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        onChanged: (value) {
          text = value;
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }

  Widget cafePasswordField(
    w,
    h,
    hint,
    password,
  ) {
    return Container(
      width: w * 0.8,
      height: h * 0.06,
      padding: EdgeInsets.only(top: h * 0.03, left: w * 0.04),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          suffix: Container(
              padding: EdgeInsets.only(right: w * 0.04),
              child: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {},
              )),
        ),
      ),
    );
  }

  Widget cafeButton({
    h,
    w,
    onTap,
    title,
  }) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          // margin: EdgeInsets.only(top),
          height: 60,
          width: w * 0.9,
          alignment: Alignment.center,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: HungitColor.HungitYellow,
            // ignore: prefer_const_constructors
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Text(title, style: HungitStyle.HungitNormalTextBlack),
        ),
      ),
    );
  }
}
