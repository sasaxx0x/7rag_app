// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:harag/Project/Home/Search.dart';
import 'package:harag/Project/Home/hme_page.dart';
import 'package:harag/Project/Home/menu.dart';
import 'package:harag/Project/Home/messages.dart';
import 'package:harag/Project/Home/notifications.dart';
import 'package:harag/config/constns/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 4;
  List<Widget> screens = [
    Menu(),
    Messages(),
    Search(),
    Notifications(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedLabelStyle: TextStyle(
            fontSize: 15, fontFamily: 'Arbic', fontWeight: FontWeight.w400),
        unselectedItemColor: Icon_color,

        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Nav_Bar,
              label: "المزيد",
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Icon_color,
              )),
          BottomNavigationBarItem(
            backgroundColor: Nav_Bar,
            label: "الرسائل",
            icon: Icon(
              Icons.markunread,
              size: 30,
              color: Icon_color,
            ),
          ),
          BottomNavigationBarItem(
              backgroundColor: Nav_Bar,
              label: "ابحث",
              icon: Icon(
                Icons.search,
                size: 30,
                color: MkColor,
              )),
          BottomNavigationBarItem(
              backgroundColor: Nav_Bar,
              label: "الاشعرات",
              icon: Icon(
                Icons.notifications_none,
                size: 30,
                color: Icon_color,
              )),
          BottomNavigationBarItem(
              backgroundColor: Nav_Bar,
              label: "الرئسية",
              icon: Icon(
                Icons.house,
                size: 30,
                color: Icon_color,
              )),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
