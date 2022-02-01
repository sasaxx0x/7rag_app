// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:harag/Project/pages/page_1.dart';
import 'package:harag/Project/pages/page_10.dart';
import 'package:harag/Project/pages/page_11.dart';
import 'package:harag/Project/pages/page_12.dart';
import 'package:harag/Project/pages/page_13.dart';
import 'package:harag/Project/pages/page_14.dart';
import 'package:harag/Project/pages/page_2.dart';
import 'package:harag/Project/pages/page_3.dart';
import 'package:harag/Project/pages/page_4.dart';
import 'package:harag/Project/pages/page_5.dart';
import 'package:harag/Project/pages/page_6.dart';
import 'package:harag/Project/pages/page_7.dart';
import 'package:harag/Project/pages/page_8.dart';
import 'package:harag/Project/pages/page_9.dart';

class CustmTabBarView extends StatefulWidget {
  const CustmTabBarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  State<CustmTabBarView> createState() => _CustmTabBarViewState();
}

class _CustmTabBarViewState extends State<CustmTabBarView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 400,
      child: TabBarView(
        controller: widget._tabController,

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          StartPage(),
          Page2(),
          Page3(),
          Page4(),
          Page5(),
          Page6(),
          Page7(),
          Page8(),
          Page9(),
          Page10(),
          Page11(),
          Page12(),
          Page13(),
          Page14(),
        ],
      ),
    );
  }
}
