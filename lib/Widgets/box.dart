import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Box extends StatelessWidget {
  final IconData myIcon;
  final String text;
  final String text2;
  const Box(
      {super.key,
      required this.myIcon,
      required this.text,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          myIcon,
          color: MyColors.white,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: MyColors.white,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: MyColors.white,
          ),
        )
      ],
    );
  }
}
