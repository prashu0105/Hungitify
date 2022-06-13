import 'package:Hungitify/CommanLib/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      onGenerateRoute: generateRoute,
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
    );
  }
}
