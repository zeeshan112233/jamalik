import 'package:flutter/material.dart';

//New Class
class customersupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.red,
      child: Column(
        children: [
          new Text(
            "Welcome to Customer Support",
            style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
