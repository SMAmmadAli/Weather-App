import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w700, color: MyColors.white),
      ),
    );
  }
}
