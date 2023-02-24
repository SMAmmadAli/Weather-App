import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Screens/Home_Screen/home_screen.dart';

import '../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
                color: const Color(0xff111111)),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.bolt,
                    color: MyColors.yellow,
                    size: 200,
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 150,
                    child: Icon(
                      Icons.bolt,
                      color: MyColors.yellow,
                      size: 70,
                    )),
                Positioned(
                    right: 20,
                    top: 50,
                    child: Icon(
                      Icons.bolt,
                      color: MyColors.yellow,
                      size: 70,
                    )),
                Positioned(
                    right: 10,
                    top: 135,
                    child: Icon(
                      Icons.circle,
                      color: MyColors.yellow,
                      size: 15,
                    )),
                Positioned(
                    right: 60,
                    top: 180,
                    child: Icon(
                      Icons.circle,
                      color: MyColors.yellow,
                      size: 15,
                    )),
                Positioned(
                    left: 50,
                    top: 80,
                    child: Icon(
                      Icons.circle,
                      color: MyColors.yellow,
                      size: 15,
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Text(
              "Get weather updates on the go!",
              style: TextStyle(
                  color: MyColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    boxShadow: [
                      BoxShadow(
                          color: MyColors.white,
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ))
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Color(0xff111111),
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
