import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Agelistile extends StatelessWidget {
  int age;

  Agelistile({required this.age});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
            child: Text(
          age.toString(),
          style: TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
