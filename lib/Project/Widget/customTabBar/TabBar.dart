// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:harag/config/constns/colors.dart';

class CustmTabBar extends StatefulWidget {
  const CustmTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  State<CustmTabBar> createState() => _CustmTabBarState();
}

class _CustmTabBarState extends State<CustmTabBar> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TabBar(
        isScrollable: true,
        controller: widget._tabController,
        unselectedLabelColor: Colors.grey,
        labelColor: MkColor,
        labelStyle: TextStyle(
            fontSize: 15, fontFamily: 'Arbic', fontWeight: FontWeight.w400),
        tabs: [
          Tab(
            text: 'الرئيسية',
          ),
          Tab(
            text: 'حراج السيارات',
          ),
          Tab(
            text: 'حراج العقار',
          ),
          Tab(
            text: 'حراج الاجهزة',
          ),
          Tab(
            text: 'مواشي وحيونات وطيور',
          ),
          Tab(
            text: 'data6',
          ),
          Tab(
            text: 'data7',
          ),
          Tab(
            text: 'data8',
          ),
          Tab(
            text: 'data9',
          ),
          Tab(
            text: 'data10',
          ),
          Tab(
            text: 'data11',
          ),
          Tab(
            text: 'data12',
          ),
          Tab(
            text: 'data13',
          ),
          Tab(
            text: 'data14',
          ),
        ],
      ),
    );
  }
}
