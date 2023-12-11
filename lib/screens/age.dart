import 'package:fitness_app/screens/gender.dart';
import 'package:fitness_app/screens/login.dart';
import 'package:fitness_app/widgets/agelisttile.dart';
import 'package:flutter/material.dart';

class Myage extends StatefulWidget {
  const Myage({super.key});

  @override
  State<Myage> createState() => _MyageState();
}

class _MyageState extends State<Myage> {
  int currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    left: MediaQuery.of(context).size.width * 0.13),
                child: Text(
                  "HOW OLD ARE YOU?",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.06),
                child: Text(
                  "THIS HELP US TO CREATE YOUR PERSONALIZED PLAN",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  height: 60,
                  width: 200,
                  child: Center(
                    child: Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Color(0xffD0FD3E))),
                    ),
                  ),
                ),
              ),
              ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      currentvalue = value;
                    });
                  },
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 1.2,
                  physics: const FixedExtentScrollPhysics(),
                  squeeze: 1.0,
                  useMagnifier: true,
                  magnification: 1.3,
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 60,
                      builder: (context, index) {
                        return Agelistile(
                          age: index,
                        );
                      })),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.88,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mygender()));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffD0FD3E)),
                      ),
                    ),
                    Container(
                      width: 120,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mylogin()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffD0FD3E),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
