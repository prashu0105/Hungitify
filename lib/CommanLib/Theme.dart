// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HungitColor {
  static const HungitCreme = Color(0xffE5E5E5);
  static const HungitYellow = Colors.amber;
  static const HungitBlack = Color(0xff000000);
  static const HungitWhite = Color(0xffFFFFFF);
  static const HungitGrey = Color(0xff808080);
}

class HungitStyle {
  static const HungitsuperHeadTextWhite = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: HungitColor.HungitBlack,
    fontFamily: 'Popins',
    letterSpacing: 1.2,
  );
  static const HungitHeadTextBlack = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: HungitColor.HungitBlack,
    fontFamily: 'Popins',
    letterSpacing: 1.2,
  );

  static const HungitSubHeadTextBlack = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: HungitColor.HungitBlack,
    fontFamily: 'Popins',
    letterSpacing: 1.2,
  );

  static const HungitNormalTextBlack = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: HungitColor.HungitBlack,
    fontFamily: 'Popins',
    letterSpacing: 1.2,
  );

  static const HungitDescTextBlack = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: HungitColor.HungitBlack,
    fontFamily: 'Popins',
    letterSpacing: 1.2,
  );
}
