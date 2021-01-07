import 'package:flutter/material.dart';

//New Class
class aboutapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blue,
      child: Column(
        children: [
          new Text(
            "Welcome to About App",
            style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
