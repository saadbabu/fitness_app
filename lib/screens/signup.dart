import 'package:fitness_app/screens/login.dart';
import 'package:flutter/material.dart';

class Mysignup extends StatefulWidget {
  const Mysignup({super.key});

  @override
  State<Mysignup> createState() => _MysignupState();
}

class _MysignupState extends State<Mysignup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset("assets/sign_back.png"),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3),
                  child: Transform.rotate(
                    angle: 3.14159265,
                    child: ClipPath(
                      clipper: ClipClipper(),
                      child: Container(
                        height: 500,
                        width: 400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mylogin()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.26),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.width * 0.26),
                  child: Container(
                    width: 50,
                    height: 3,
                    color: Color(0xffD0FD3E),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1, left: 25),
                  child: Text(
                    "HELLO ROOKIES,",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.17, left: 25),
                  child: Text(
                    "Enter your informations below or login with a other account",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.43),
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
                            hintText: 'password again',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
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
                        width: 130,
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
                                  "Signup",
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
          )),
    );
  }
}

class ClipClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Reduce the height from the top-left corner by changing the y-coordinate
    path.lineTo(0, 0); // Top-left
    path.lineTo(size.width, 0); // Top-right
    path.lineTo(size.width,
        size.height * 0.8); // Bottom-right, adjust this value as needed
    path.lineTo(0, size.height); // Bottom-left

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
