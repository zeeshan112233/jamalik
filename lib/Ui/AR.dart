import 'package:flutter/material.dart';

//New Class
class AR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.yellow,
        child: Column(
          children: [
            new Text(
              "Welcome to AT",
              style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
            ),
          ],
        ));
  }
}
