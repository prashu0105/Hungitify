import 'package:Hungitify/Screen/Category.dart';
import 'package:Hungitify/Screen/ChangePassword.dart';
import 'package:Hungitify/Screen/Favourites.dart';
import 'package:Hungitify/Screen/ForgotPassword.dart';
import 'package:Hungitify/Screen/Home.dart';
import 'package:Hungitify/Screen/ItemDesc.dart';
import 'package:Hungitify/Screen/LoginType.dart';
import 'package:Hungitify/Screen/OTP.dart';
import 'package:Hungitify/Screen/Order.dart';
import 'package:Hungitify/Screen/Profile.dart';
import 'package:Hungitify/Screen/Sign_up.dart';
import 'package:Hungitify/Screen/UpdatePassword.dart';
import 'package:Hungitify/Screen/Welcome.dart';
import 'package:Hungitify/Screen/WorkerSection/WorkerLogin.dart';
import 'package:Hungitify/Screen/log_in.dart';
import 'package:Hungitify/Screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case '/welcome':
      return MaterialPageRoute(builder: (_) => MyWelcome());
    case '/loginType':
      return MaterialPageRoute(builder: (_) => LoginType());
    case '/login':
      return MaterialPageRoute(builder: (_) => const LogIn());
    case '/workerLogin':
      return MaterialPageRoute(builder: (_) => WorkerLogin());
    case '/signup':
      return MaterialPageRoute(builder: (_) => const SignUp());
    case '/home':
      return MaterialPageRoute(builder: (_) => Home());
    case '/forgotPassword':
      return MaterialPageRoute(builder: (_) => ForgotPassword());
    case '/otp':
      return MaterialPageRoute(builder: (_) => OTP());
    case '/updatePassword':
      return MaterialPageRoute(builder: (_) => UpdatePassword());
    case '/profile':
      return MaterialPageRoute(builder: (_) => MyProfile());
    case '/category':
      return MaterialPageRoute(builder: (_) => Category());
    case '/favorites':
      return MaterialPageRoute(builder: (_) => Favourite());
    case '/itemdesc':
      return MaterialPageRoute(builder: (_) => ItemDesc());
    case '/order':
      return MaterialPageRoute(builder: (_) => MyOrder());
    case '/changepassword':
      return MaterialPageRoute(builder: (_) => ChangePassword());

    default:
      return null;
  }
}
