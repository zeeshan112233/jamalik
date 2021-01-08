import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Row(
            children: [
              //1st row
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1),
                    child: CircleAvatar(
                      radius: (20),
                      backgroundImage: AssetImage('images/fathima.png'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Rani",
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  "Hair cut",
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: "DM Sans",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                "30 min",
                style: TextStyle(
                  color: Colors.pink,
                  fontFamily: "DM Sans",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Text(
                "120\$",
                style: TextStyle(
                  color: Colors.pink,
                  fontFamily: "DM Sans",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          //2nd Row
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  "10 January 2021",
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: "DM Sans",
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          //Row 3
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.75,
                child: Divider(
                  color: const Color(0xff982877),
                  thickness: 0.8,
                ),
              ),
            ],
          ),
          //4 Row
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.63,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                child: Text(
                  "Total",
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: "DM Sans",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Text(
                "120\$",
                style: TextStyle(
                  color: Colors.pink,
                  fontFamily: "DM Sans",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  "10 January 2021",
                  style: TextStyle(
                    color: const Color(0xff982877),
                    fontFamily: "DM Sans",
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
