import 'package:fitness_app/screens/gender.dart';
import 'package:flutter/material.dart';

class Myboarding extends StatefulWidget {
  const Myboarding({super.key});

  @override
  State<Myboarding> createState() => _MyboardingState();
}

class _MyboardingState extends State<Myboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: PageView(children: [
          Stack(
            children: [
              Image.asset("assets/b1.png"),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.9,
                    left: MediaQuery.of(context).size.width * 0.35),
                child: Image.asset("assets/Ind1.png"),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset("assets/Background.png"),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.9,
                    left: MediaQuery.of(context).size.width * 0.35),
                child: Image.asset("assets/Ind2.png"),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset("assets/b2.png"),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.77,
                    left: MediaQuery.of(context).size.width * 0.27),
                child: Container(
                  width: 170,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mygender()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffD0FD3E),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.9,
                    left: MediaQuery.of(context).size.width * 0.39),
                child: Image.asset("assets/Ind3.png"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
