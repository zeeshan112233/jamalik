import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jamalik/Ui/Servicesscreen.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class dotcard extends StatelessWidget {
  dotcard({
    this.text,
    this.customimage,
  });

  final String text;
  final String customimage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.035,
              vertical: MediaQuery.of(context).size.width * 0.02),
          child: TouchableOpacity(
            onTap: () => {
              print(this.text),
              Navigator.push(
                context,
                MaterialPageRoute(
                   builder: (context) => Servicesscreen(this.text),
                ),
              )
            },
            child: Container(
              height: 70,
              // margin: EdgeInsets.only(left: 25, top: 30, right: 25, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                    new Image.asset(
                      customimage,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 2,
          child: Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(90),
            ),
          ),
        ),
      ],
    );
  }
}
