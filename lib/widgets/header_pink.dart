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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => print("Back tapped"),
            child: new Image.asset(
              Back,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 110.0),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "DM Sans",
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.14,
    );
  }
}
