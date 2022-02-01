// ignore_for_file: avoid_unnecessary_containers, unused_local_variable, prefer_const_constructors

import 'package:animated_widgets/widgets/scale_animated.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harag/Project/NavBar/nav_bar.dart';
import 'package:harag/config/constns/colors.dart';
import 'package:harag/config/constns/images.dart';

class SplaSh extends StatefulWidget {
  const SplaSh({Key? key}) : super(key: key);

  @override
  State<SplaSh> createState() => _SplaShState();
}

class _SplaShState extends State<SplaSh> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(NavBar());
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MkColor,
      body: Container(
        alignment: Alignment.center,
        child: ScaleAnimatedWidget.tween(
          child: Image.asset(
            Splash_image,
            fit: BoxFit.cover,
            width: size.width * 0.60,
          ),
          scaleDisabled: 0.1,
          scaleEnabled: 1,
          duration: Duration(milliseconds: 700),
        ),
      ),
    );
  }
}
