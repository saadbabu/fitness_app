import 'dart:ffi';

import 'package:flutter/material.dart';

class Mysettings extends StatefulWidget {
  const Mysettings({super.key});

  @override
  State<Mysettings> createState() => _MysettingsState();
}

class _MysettingsState extends State<Mysettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.07, left: 20),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 56, 56, 56),
                          borderRadius: BorderRadius.circular(70.0)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_back_ios,
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "FITNESS TRAINNERS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.17),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/trainner1.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Row(
                              children: [
                                Text(
                                  "Richard Will",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  color: Color(0xffD0FD3E),
                                  height: 20,
                                  width: 29,
                                  child: Center(
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 55.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Text(
                              'High Intensity Training',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.32),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/trainner2.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Row(
                              children: [
                                Text(
                                  "Jennifer James",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  color: Color(0xffD0FD3E),
                                  height: 20,
                                  width: 29,
                                  child: Center(
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 55.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Text(
                              'High Intensity Training',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.47),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/trainner3.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Row(
                              children: [
                                Text(
                                  "Barian Edward",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  color: Color(0xffD0FD3E),
                                  height: 20,
                                  width: 29,
                                  child: Center(
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 55.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Text(
                              'High Intensity Training',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.62),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/trainner4.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Row(
                              children: [
                                Text(
                                  "Emily Kevin",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  color: Color(0xffD0FD3E),
                                  height: 20,
                                  width: 29,
                                  child: Center(
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 55.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Text(
                              'High Intensity Training',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.77),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/trainner5.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Row(
                              children: [
                                Text(
                                  "Rebecca Smith",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  color: Color(0xffD0FD3E),
                                  height: 20,
                                  width: 29,
                                  child: Center(
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 55.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Text(
                              'High Intensity Training',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.92),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/trainner6.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Row(
                              children: [
                                Text(
                                  "Ronald Jason",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  color: Color(0xffD0FD3E),
                                  height: 20,
                                  width: 29,
                                  child: Center(
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 55.0,
                                left: MediaQuery.of(context).size.width * 0.3),
                            child: Text(
                              'High Intensity Training',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
