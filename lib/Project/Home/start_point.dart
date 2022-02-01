// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:harag/Project/Home/hme_page.dart';

class StartPoint extends StatefulWidget {
  const StartPoint({Key? key}) : super(key: key);

  @override
  _StartPointState createState() => _StartPointState();
}

class _StartPointState extends State<StartPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          HomeScreen(),
        ],
      ),
    );
  }
}
