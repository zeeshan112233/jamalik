import 'package:flutter/material.dart';

//New Class
class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.pink,
      child: Column(
        children: [
          new Text(
            "Welcome to Notification",
            style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
