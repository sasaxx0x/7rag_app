// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:harag/config/constns/colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              width: size.width * 0.80,
              height: 40,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'اسم المستخدم او رقم الجوال',
                    hintStyle: TextStyle(
                        color: Icon_Color,
                        fontSize: 15,
                        fontFamily: 'Arbic',
                        fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: TextFiled_Color,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: TextFiled_Color,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: size.width * 0.80,
              height: 40,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'اكتب كلمة المرور',
                    hintStyle: TextStyle(
                        color: Icon_Color,
                        fontSize: 15,
                        fontFamily: 'Arbic',
                        fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: TextFiled_Color,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: TextFiled_Color,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
