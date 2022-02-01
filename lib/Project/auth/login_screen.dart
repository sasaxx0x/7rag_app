// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:harag/Project/NavBar/nav_bar.dart';
import 'package:harag/Project/Widget/customTextfiled/custom_textfiled.dart';
import 'package:harag/config/constns/colors.dart';
import 'package:harag/config/utiltis/navigator.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Back_Title,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              InkWell(
                onTap: () {
                  ChangeScreen.back_screen(context, NavBar());
                },
                child: Text(
                  'إلغاء',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Arbic',
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                'تسجيل الدخول',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Arbic',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CustomTextFiled(size: size),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size.width * 0.80,
                height: 40,
                decoration: BoxDecoration(
                  color: Bottun_Color,
                ),
                child: Center(
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Arbic',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyle(
                    color: Back_Title,
                    fontSize: 15,
                    fontFamily: 'Arbic',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Container(
                width: size.width * 0.80,
                height: 40,
                decoration: BoxDecoration(
                  color: Back_Title,
                ),
                child: Center(
                  child: Text(
                    'التسجيل با لحراج',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Arbic',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
