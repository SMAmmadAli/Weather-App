import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Controller/api_controller.dart';
import 'package:weather_app/Model/weather_model.dart';

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
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff9bd5e8),
            Color(0xff333333),
          ], begin: Alignment.topCenter, end: Alignment.center
                  //  radius: 1.5, center: Alignment.topLeft
                  )),
          child: Column(
            children: [
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 7),
                  child: Icon(
                    Icons.menu,
                    size: 25,
                    color: Color(0xffffffff),
                  ),
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23, vertical: 8),
                  child: Text(
                    "Karachi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Monday, 22 Feb",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                trailing: Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Color(0xffffffff),
                  size: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                height: height
                    ? MediaQuery.of(context).size.height * 0.6
                    : MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(width: 2, color: const Color(0xffffffff))),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "21",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0,
                              ),
                              child: Text(
                                "Rainy Day",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0, right: 15.0),
                          child: Icon(
                            CupertinoIcons.cloud_sun_bolt_fill,
                            color: Color(0xfffeea08),
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
                          ? MediaQuery.of(context).size.height * 0.3
                          : MediaQuery.of(context).size.height * 0.13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: const Color(0xffffffff))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Icon(
                                CupertinoIcons.wind,
                                color: Color(0xffffffff),
                                size: 20,
                              ),
                              Text(
                                "Wind",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                "13 km/hr",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffffffff),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(
                                CupertinoIcons.cloud_rain_fill,
                                color: Color(0xffffffff),
                                size: 20,
                              ),
                              Text(
                                "Chance of Rain",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                "88%",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffffffff),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(
                                CupertinoIcons.drop_fill,
                                color: Color(0xffffffff),
                                size: 20,
                              ),
                              Text(
                                "Humidity",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                "24%",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffffffff),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    height = !height;
                  });
                },
                child: Container(
                  width: 90,
                  height: 25,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.5, color: const Color(0xffffffff)),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        height ? "Less Report" : "Full Report",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Icon(
                        height
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down_sharp,
                        color: Color(0xffffffff),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
