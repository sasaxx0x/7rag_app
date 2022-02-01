// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, unused_import, prefer_final_fields, unused_field, camel_case_types

import 'package:flutter/material.dart';
import 'package:harag/Project/Widget/StartTitle/start_title.dart';
import 'package:harag/Project/Widget/customTabBar/TabBar.dart';
import 'package:harag/Project/Widget/customTabBar/TabBarview.dart';
import 'package:harag/Project/Widget/customdrawer/custom_drawer.dart';
import 'package:harag/Project/auth/login_screen.dart';
import 'package:harag/config/constns/colors.dart';
import 'package:harag/config/constns/images.dart';
import 'package:harag/config/utiltis/navigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 14, vsync: this);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Back_Title,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Image.asset(
                Icon_Windw,
                width: 40,
                fit: BoxFit.cover,
              ),
              onTap: () {
                if (_scaffoldkey.currentState?.isDrawerOpen == false) {
                  _scaffoldkey.currentState?.openDrawer();
                } else {
                  _scaffoldkey.currentState?.openEndDrawer();
                }
              },
            ),
          ),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Image.asset(
                  Name_Title,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image.asset(Icon_Title),
                onTap: () {
                  ChangeScreen.go_Screen(context, LogInScreen());
                },
              ),
            ),
          ],
        ),
        body: Scaffold(
          key: _scaffoldkey,
          drawer: Custom_Drawer(size: size),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Back_Row,
                  child: CustmTabBar(tabController: _tabController),
                ),
                StartTitle(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.40),
                  child: SingleChildScrollView(
                    child: Container(
                      height: 510,
                      child: CustmTabBarView(tabController: _tabController),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
