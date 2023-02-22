import 'package:flutter/material.dart';

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
              children: const [
                Center(
                  child: Icon(
                    Icons.abc,
                    color: Color(0xfffeea08),
                    size: 200,
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 150,
                    child: Icon(
                      Icons.abc,
                      color: Color(0xfffeea08),
                      size: 70,
                    )),
                Positioned(
                    right: 20,
                    top: 50,
                    child: Icon(
                      Icons.abc,
                      color: Color(0xfffeea08),
                      size: 70,
                    )),
                Positioned(
                    right: 10,
                    top: 135,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xfffeea08),
                      size: 15,
                    )),
                Positioned(
                    right: 60,
                    top: 180,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xfffeea08),
                      size: 15,
                    )),
                Positioned(
                    left: 30,
                    top: 80,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xfffeea08),
                      size: 15,
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.3,
            child: const Text(
              "Get weather updates on the go!",
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xffffffff),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                          offset: Offset(
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
