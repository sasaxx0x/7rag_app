// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types, unused_import, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:harag/config/constns/colors.dart';
import 'package:harag/config/constns/images.dart';

class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.70,
      child: Drawer(
        backgroundColor: BackDrawer_Color,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  _drawerCard(Image1),
                  _drawerCard(Image2),
                  _drawerCard(Image3),
                ],
              ),
              Row(
                children: [
                  _drawerCard(Image4),
                  _drawerCard(Image5),
                  _drawerCard(Image6),
                ],
              ),
              Row(
                children: [
                  _drawerCard(Image7),
                  _drawerCard(Image8),
                  _drawerCard(Image9),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: LineDivider_Color,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'اظهار المزيد',
                    style: TextStyle(
                        color: TextDrawer_Color,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arbic'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  color: LineDivider_Color,
                  thickness: 3,
                  height: 40,
                ),
              ),
              Row(
                children: [
                  _drawerCard(Pic1),
                  _drawerCard(Pic2),
                  _drawerCard(Pic3),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  color: LineDivider_Color,
                  thickness: 3,
                  height: 40,
                ),
              ),
              Row(
                children: [
                  _drawerTextCard('اراضي'),
                  _drawerTextCard('شقق'),
                  _drawerTextCard('فلل'),
                ],
              ),
              Row(
                children: [
                  _drawerTextCard('محلات'),
                  _drawerTextCard('عمائر'),
                  _drawerTextCard('محلات'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  color: LineDivider_Color,
                  thickness: 3,
                  height: 40,
                ),
              ),
              Row(
                children: [
                  _drawerCard(Pic4),
                  _drawerCard(Pic5),
                  _drawerCard(Pic6),
                ],
              ),
              Row(
                children: [
                  _drawerCard(Pic7),
                  _drawerCard(Pic8),
                  _drawerCard(Pic9),
                ],
              ),
              Row(
                children: [
                  _drawerCard(Pic10),
                  _drawerCard(Pic11),
                  _drawerCard(Pic12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerCard(String pic) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(
          pic,
          width: 20,
          height: 20,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _drawerTextCard(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: TextDrawer_Color,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arbic'),
          ),
        ),
      ),
    );
  }
}
