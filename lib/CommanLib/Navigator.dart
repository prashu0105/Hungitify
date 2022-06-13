// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomNavigator {
  navigateTo({
    @required context,
    @required routeName,
  }) {
    Navigator.pushNamed(context, routeName);
  }

  popWithData({context, required data}) {
    Navigator.pop(context, '$data');
  }

  pop({context}) {
    Navigator.pop(context);
  }

  pushNavigateTo({
    @required context,
    @required routeName,
  }) {
    Navigator.pushReplacementNamed(context, routeName);
  }
}
