import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
  const Mycard({super.key});

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset("assets/Image.png"),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  color: Colors.black,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Day 01 - Warm Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.07,
                          left: 12),
                      child: Text(
                        "06 workouts for biginners",
                        style: TextStyle(
                          color: Color(0xffD0FD3E),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.13,
                          left: 30),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color.fromARGB(115, 99, 99, 99)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/Play.png"),
                                  Text(
                                    "\t60 mins",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color.fromARGB(115, 99, 99, 99)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/Flame.png"),
                                  Text(
                                    "\t350 Cal",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2,
                            left: 10),
                        child: Container(
                          height: 100,
                          width: 400,
                          child: Text(
                            "Want your body to be healthy. Join our program with directions according to body’s goals. Increasing physical strength is the goal of strenght training. Maintain body fitness by doing physical exercise at least 2-3 times a week. ",
                            style: TextStyle(
                                fontFamily: 'Open Sans', color: Colors.white),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.35,
                          left: 5),
                      child: Container(
                        height: 77,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: const Color.fromARGB(115, 99, 99, 99)),
                        child: Stack(
                          children: [
                            Image.asset("assets/rect1.png"),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.25),
                              child: Text(
                                "Simple Warm-up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.25,
                                  top: MediaQuery.of(context).size.height *
                                      0.03),
                              child: Text(
                                "Exercises",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width * 0.8,
                                    top: MediaQuery.of(context).size.height *
                                        0.03),
                                child: Image.asset("assets/Down.png"))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.47,
                          left: 5),
                      child: Container(
                        height: 77,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: const Color.fromARGB(115, 99, 99, 99)),
                        child: Stack(
                          children: [
                            Image.asset("assets/rect1.png"),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.25),
                              child: Text(
                                "Simple Warm-up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.25,
                                  top: MediaQuery.of(context).size.height *
                                      0.03),
                              child: Text(
                                "Exercises",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width * 0.8,
                                    top: MediaQuery.of(context).size.height *
                                        0.03),
                                child: Image.asset("assets/Down.png"))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.89,
                  left: MediaQuery.of(context).size.width * 0.15),
              child: Container(
                width: 240,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xffD0FD3E),
                  child: Text(
                    "Start Workout",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
