import 'package:flutter/material.dart';

class header_pink extends StatelessWidget {
  header_pink({
    this.Back,
    this.text,
  });

  final String Back;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 30, right: 15, bottom: 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purpleAccent, Colors.pink.shade300]),
        borderRadius: BorderRadius.only(
            // topLeft: Radius.circular(10),
            // topRight: Radius.circular(10),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => print("Back tapped"),
            child: new Image.asset(
              Back,
              width: 90.0,
              height: 90.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 135.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
