import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/listview_container.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: false,
        children: const [
          ListViewContainer(
              text: "12PM",
              icon: CupertinoIcons.cloud_sun_rain,
              text1: "19 °C"),
          ListViewContainer(
              text: "Now", icon: CupertinoIcons.cloud_snow, text1: "20 °C"),
          ListViewContainer(
              text: "4PM", icon: CupertinoIcons.cloud_sun, text1: "22 °C"),
          ListViewContainer(
              text: "6PM", icon: CupertinoIcons.cloud_sleet, text1: "21 °C"),
          ListViewContainer(
              text: "8PM", icon: CupertinoIcons.cloud_sun_bolt, text1: "8 °C"),
          ListViewContainer(
              text: "10PM", icon: CupertinoIcons.cloud_rain, text1: "22 °C"),
          ListViewContainer(
              text: "12AM", icon: CupertinoIcons.cloud_hail, text1: "21 °C"),
          ListViewContainer(
              text: "2PM", icon: CupertinoIcons.cloud_bolt, text1: "24 °C"),
          ListViewContainer(
              text: "4PM",
              icon: CupertinoIcons.cloud_moon_bolt,
              text1: "18 °C"),
        ],
      ),
    );
  }
}
