import 'dart:ui';

import 'package:fitness_app/screens/card1.dart';
import 'package:fitness_app/screens/chat.dart';
import 'package:fitness_app/screens/notifications.dart';
import 'package:fitness_app/screens/profile.dart';
import 'package:fitness_app/screens/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  String mycategory = '';
  int currentab = 0;
  final List<Widget> screens = [
    Myprofile(),
    Mynotifications(),
    Myhome(),
    Mychat(),
    Mysettings()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentscreen = Myhome();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "HELLO SAAD,",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                child: Text(
                  "Good Morning",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today Workout Plan",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Wednesday 30 Nov",
                      style: TextStyle(
                          color: Color(0xffD0FD3E),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mycard()));
                  },
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 1.2, sigmaY: 1.2),
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/Image.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.38),
                child: Text(
                  "DAY1 - Warm Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.42),
                child: Text(
                  "07:00 - 08:00",
                  style: TextStyle(
                      color: Color(0xffD0FD3E),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Workout Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Color(0xffD0FD3E),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.55),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    // color: const Color.fromARGB(115, 99, 99, 99)
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            mycategory = 'beginner';
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.33,
                          height: double.infinity,
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: (mycategory == 'beginner')
                                  ? Color(0xffD0FD3E)
                                  : const Color.fromARGB(115, 99, 99, 99)),
                          child: Center(
                            child: Text(
                              "Beginner",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: (mycategory == 'beginner')
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            mycategory = 'Intermediate';
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.33,
                          height: double.infinity,
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: (mycategory == 'Intermediate')
                                  ? Color(0xffD0FD3E)
                                  : const Color.fromARGB(115, 99, 99, 99)),
                          child: Center(
                            child: Text(
                              "Intermediate",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: (mycategory == 'Intermediate')
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            mycategory = 'Advance';
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.34,
                          height: double.infinity,
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: (mycategory == 'Advance')
                                  ? Color(0xffD0FD3E)
                                  : const Color.fromARGB(115, 99, 99, 99)),
                          child: Center(
                            child: Text(
                              "Advance",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: (mycategory == 'Advance')
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.65),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Stack(children: [
                          Image.asset("assets/card1.png"),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.13,
                            ),
                            child: Text(
                              "Learn The Basic Of Training",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.15,
                            ),
                            child: Text(
                              "06 workout for biggners",
                              style: TextStyle(
                                  color: Color(0xffD0FD3E), fontSize: 15),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 163,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage("assets/card2.jpeg"),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.13,
                              ),
                              child: Text(
                                "Learn The Basic Of Yoga",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.15,
                              ),
                              child: Text(
                                "08 workout for biggners",
                                style: TextStyle(
                                    color: Color(0xffD0FD3E), fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.9),
                child: Column(
                  children: [
                    Column(children: [
                      //<-------------------HCARD 1------------------------------>
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  backgroundColor: Colors.black,
                                  actions: [
                                    Center(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Myhome()));
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18),
                                          )),
                                    )
                                  ],
                                  title: Image.asset(
                                    "assets/h-card1.png",
                                    fit: BoxFit.fill,
                                  ),
                                  contentPadding: const EdgeInsets.all(20),
                                  content: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD0FD3E)),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Take Appointment",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  )));
                        },
                        child: Container(
                          height: 150,
                          width: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/h-card1.png"),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.12),
                                child: Text(
                                  "Wakeup call",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.145),
                                child: Text(
                                  "04 workouts for biggners",
                                  style: TextStyle(
                                      color: Color(0xffD0FD3E), fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Column(children: [
                      //<-------------------HCARD 2------------------------------>
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  backgroundColor: Colors.black,
                                  actions: [
                                    Center(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Myhome()));
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18),
                                          )),
                                    )
                                  ],
                                  title: Image.asset(
                                    "assets/h-card2.png",
                                    fit: BoxFit.fill,
                                  ),
                                  contentPadding: const EdgeInsets.all(20),
                                  content: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD0FD3E)),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Take Appointment",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  )));
                        },
                        child: Container(
                          height: 150,
                          width: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/h-card2.png"),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.12),
                                child: Text(
                                  "Wakeup call",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.145),
                                child: Text(
                                  "04 workouts for biggners",
                                  style: TextStyle(
                                      color: Color(0xffD0FD3E), fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Column(children: [
                      //<-------------------HCARD 3------------------------------>
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  backgroundColor: Colors.black,
                                  actions: [
                                    Center(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Myhome()));
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18),
                                          )),
                                    )
                                  ],
                                  title: Image.asset(
                                    "assets/h-card3.png",
                                    fit: BoxFit.fill,
                                  ),
                                  contentPadding: const EdgeInsets.all(20),
                                  content: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD0FD3E)),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Take Appointment",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  )));
                        },
                        child: Container(
                          height: 150,
                          width: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/h-card3.png"),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.12),
                                child: Text(
                                  "Wakeup call",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.145),
                                child: Text(
                                  "04 workouts for biggners",
                                  style: TextStyle(
                                      color: Color(0xffD0FD3E), fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
        backgroundColor: Color(0xffD0FD3E),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 22, 22, 22),
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Container(
          width: double.infinity,
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentscreen = Mychat();
                        currentab = 0;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mychat()));
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat, color: Color(0xffD0FD3E)),
                        Text(
                          'Chat',
                          style: TextStyle(color: Color(0xffD0FD3E)),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentscreen = Mysettings();
                        currentab = 2;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mysettings()));
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.person_2_alt,
                            color: Color(0xffD0FD3E)),
                        Text(
                          'Trainners',
                          style: TextStyle(color: Color(0xffD0FD3E)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentscreen = Myprofile();
                        currentab = 3;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_sharp, color: Color(0xffD0FD3E)),
                        Text(
                          'profile',
                          style: TextStyle(color: Color(0xffD0FD3E)),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentscreen = Mynotifications();
                        currentab = 4;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications, color: Color(0xffD0FD3E)),
                        Text(
                          'notifiy',
                          style: TextStyle(color: Color(0xffD0FD3E)),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
