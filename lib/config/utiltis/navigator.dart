// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ChangeScreen {
  static void go_Screen(context, screen) {
    Navigator.pushReplacement(
        context,
        PageTransition(
            child: screen,
            type: PageTransitionType.bottomToTop,
            duration: Duration(milliseconds: 700)));
  }

  static void back_screen(context, screen) {
    Navigator.pushReplacement(
        context,
        PageTransition(
            child: screen,
            type: PageTransitionType.topToBottom,
            duration: Duration(milliseconds: 700)));
  }
}
