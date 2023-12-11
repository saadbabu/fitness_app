import 'package:fitness_app/screens/home.dart';
import 'package:fitness_app/screens/signup.dart';
import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Expanded(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset("assets/log_back_edited.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.55),
                  child: Container(
                    height: 250,
                    width: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color(0xffD0FD3E))),
                            fillColor: Colors.black,
                            prefixIconColor: Colors.grey,
                            filled: true,
                            prefixIcon: Icon(Icons.person),
                            hintText: 'username',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color(0xffD0FD3E))),
                            fillColor: Colors.black,
                            prefixIconColor: Colors.grey,
                            filled: true,
                            prefixIcon: Icon(Icons.password_outlined),
                            hintText: 'password',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.6),
                          child: InkWell(
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffD0FD3E)),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mylogin()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04, left: 40),
                  child: Container(
                    height: 3,
                    width: 40,
                    color: Color(0xffD0FD3E),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.27),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mysignup()));
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.85),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: const Color.fromARGB(255, 68, 68, 68),
                        ),
                        child: Image.asset("assets/Google.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: const Color.fromARGB(255, 68, 68, 68),
                        ),
                        child: Image.asset("assets/Apple.png"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      Container(
                        width: 120,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Myhome()));
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
            ),
          ),
        ),
      ),
    );
  }
}
