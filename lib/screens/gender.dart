import 'package:fitness_app/screens/age.dart';
// ignore: unused_import
import 'package:fitness_app/widgets/agelisttile.dart';
import 'package:flutter/material.dart';

class Mygender extends StatefulWidget {
  const Mygender({super.key});

  @override
  State<Mygender> createState() => _MygenderState();
}

class _MygenderState extends State<Mygender> {
  String selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Text(
                "TELL US ABOUT YOURSELF",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  left: MediaQuery.of(context).size.width * 0.1),
              child: Text(
                "TO GIVE YOU BETTER EXPERIENCE WE \n\t\t\t\t\t\t\tNEED TO KNOW YOUR GENDER",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.27,
                  left: MediaQuery.of(context).size.width * 0.3),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedGender = 'male';
                  });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      color: (selectedGender == 'male')
                          ? Color(0xffD0FD3E)
                          : const Color.fromARGB(115, 99, 99, 99)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/g1.png"),
                        Text(
                          "Male",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  left: MediaQuery.of(context).size.width * 0.3),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedGender = 'female';
                  });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: (selectedGender == 'female')
                          ? Color(0xffD0FD3E)
                          : const Color.fromARGB(115, 99, 99, 99),
                      borderRadius: BorderRadius.circular(80.0)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/g2.png",
                          color: Colors.black,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.85,
                  left: MediaQuery.of(context).size.width * 0.6),
              child: Container(
                width: 120,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Myage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffD0FD3E),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Next",
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
          ],
        ),
      ),
    );
  }
}
