// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:harag/config/constns/colors.dart';
import 'package:harag/config/constns/images.dart';

class StartTitle extends StatelessWidget {
  const StartTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            child: Icon(
              Icons.view_list,
              color: MkColor,
              size: 25,
            ),
            decoration: BoxDecoration(
              color: Back_Icon,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 175),
            child: Container(
              width: 40,
              height: 40,
              child: Image.asset(Icon_filter),
              decoration: BoxDecoration(
                color: Back_Icon,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          Container(
            width: 90,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Line_Color, width: 3),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_down,
                  color: MkColor,
                ),
                Text(
                  'المنطقة',
                  style: TextStyle(
                    color: MkColor,
                    fontSize: 14,
                    fontFamily: 'Arbic',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
