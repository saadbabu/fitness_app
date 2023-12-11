import 'dart:async';
import 'package:fitness_app/screens/onboarding.dart';
import 'package:flutter/material.dart';

class Mysplash extends StatefulWidget {
  const Mysplash({super.key});

  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => Myboarding(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width * 0.3),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white)),
            child: Image.asset(
              "assets/dumbell.png",
              color: Colors.white,
              scale: 2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.46,
              left: MediaQuery.of(context).size.width * 0.35),
          child: Text(
            "DEV",
            style: TextStyle(
                fontSize: 45,
                color: Color(0xffD0FD3E),
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.52,
              left: MediaQuery.of(context).size.width * 0.22),
          child: Text(
            "MUSCLES",
            style: TextStyle(
                fontSize: 45,
                color: Color(0xffD0FD3E),
                fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
