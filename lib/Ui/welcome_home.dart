import 'package:flutter/material.dart';
import 'package:jamalik/Ui/AR.dart';
import 'package:jamalik/Ui/Gakhar.dart';

//New Class
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.yellow,
      child: Column(
        children: [
          new Text(
            "Welcome to dsssdsd",
            style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
          new RaisedButton(
            key: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Gakhar(),
                ),
              );
            },
            color: const Color(0xFFe0e0e0),
            child: new Text(
              "Shahzainb work",
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
          ),
          new RaisedButton(
            key: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AR(),
                ),
              );
            },
            color: const Color(0xFFe0e0e0),
            child: new Text(
              "AR work",
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
          ),
        ],
      ),
    );
  }
}
