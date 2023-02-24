import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Controller/api_controller.dart';
import 'package:weather_app/Model/weather_model.dart';
import 'package:weather_app/Screens/Home_Screen/text_widget.dart';
import 'package:weather_app/Widgets/list_view.dart';

import '../../Widgets/box.dart';
import '../../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController myController = TextEditingController();
  Weather_Model? weather_model;
  // Weather_Model? weather_model;
  bool height = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            MyColors.blue,
            MyColors.grey,
          ], begin: Alignment.topCenter, end: Alignment.center)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Icon(
                      Icons.menu,
                      size: 25,
                      color: MyColors.white,
                    ),
                  ),
                  title: Container(
                    padding: const EdgeInsets.only(top: 7),
                    margin: const EdgeInsets.only(top: 10),
                    width: double.infinity,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1.5, color: MyColors.white)),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your City",
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintStyle: TextStyle(
                              color: MyColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  trailing: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: InkWell(
                        onTap: () async {
                          weather_model = await WeatherService()
                              .getWeatherDetail(myController.text);
                          print(weather_model?.main?.temp ?? "MyError");
                          setState(() {});
                        },
                        child: Container(
                          child: Icon(
                            CupertinoIcons.search,
                            color: MyColors.white,
                            size: 25,
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: height
                      ? MediaQuery.of(context).size.height * 0.5
                      : MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 2, color: MyColors.white)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "21 °C",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w700,
                                    color: MyColors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: Text(
                                  "Karachi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: MyColors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: Text(
                                  "Mon, 22 Feb",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: MyColors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, right: 15.0),
                            child: Icon(
                              CupertinoIcons.cloud_sun_bolt_fill,
                              color: MyColors.yellow,
                              size: 85,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: height
                              ? MediaQuery.of(context).size.height * 0.26
                              : MediaQuery.of(context).size.height * 0.13,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(width: 1, color: MyColors.white)),
                          child: height
                              ? Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Box(
                                            myIcon: CupertinoIcons.wind,
                                            text: "Wind",
                                            text2: "13 km/hr"),
                                        Box(
                                            myIcon:
                                                CupertinoIcons.cloud_rain_fill,
                                            text: "Chance of Rain",
                                            text2: "88%"),
                                        Box(
                                            myIcon: CupertinoIcons.drop_fill,
                                            text: "Humidity",
                                            text2: "24%"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Box(
                                            myIcon: CupertinoIcons.wind,
                                            text: "Wind",
                                            text2: "13 km/hr"),
                                        Box(
                                            myIcon:
                                                CupertinoIcons.cloud_rain_fill,
                                            text: "Chance of Rain",
                                            text2: "88%"),
                                        Box(
                                            myIcon: CupertinoIcons.drop_fill,
                                            text: "Humidity",
                                            text2: "24%"),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Box(
                                            myIcon: CupertinoIcons.wind,
                                            text: "Wind",
                                            text2: "13 km/hr"),
                                        Box(
                                            myIcon:
                                                CupertinoIcons.cloud_rain_fill,
                                            text: "Chance of Rain",
                                            text2: "88%"),
                                        Box(
                                            myIcon: CupertinoIcons.drop_fill,
                                            text: "Humidity",
                                            text2: "24%"),
                                      ],
                                    ),
                                  ],
                                )),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      height = !height;
                    });
                  },
                  child: Center(
                    child: Container(
                      width: 90,
                      height: 25,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: MyColors.white),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            height ? "Less Report" : "Full Report",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: MyColors.white,
                            ),
                          ),
                          Icon(
                            height
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down_sharp,
                            color: MyColors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const MyText(
                  text: "Hourly forecast",
                ),
                const MyListView(),
                const MyText(
                  text: "Days forecast",
                ),
                const MyListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
