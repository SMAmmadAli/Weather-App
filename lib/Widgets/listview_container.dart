import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ListViewContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final String text1;

  const ListViewContainer(
      {super.key, required this.text, required this.icon, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      width: 50,
      height: 70,
      decoration: BoxDecoration(
          color: const Color(0xffE0D9FF),
          border: Border.all(width: 2, color: MyColors.purple),
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(12),
            bottom: Radius.circular(30),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: MyColors.purple),
          ),
          Icon(
            icon,
            color: MyColors.purple,
            size: 20,
          ),
          Text(
            text1,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: MyColors.purple),
          ),
        ],
      ),
    );
  }
}
