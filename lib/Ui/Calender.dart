import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:jamalik/Ui/Checkout.dart';
import 'package:jamalik/Ui/Payment.dart';
import 'package:jamalik/Ui/home_2.dart';
import 'package:jamalik/widgets/PaymentWidget.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  dynamic initialDate= DateTime(2020, 2, 20);
 dynamic firstDate= DateTime(2020, 2, 15);
 dynamic      lastDate= DateTime(2021, 11, 20);
  bool isClicked = false;
  final String Back = "images/back.png";
  final String text = "Select Date & Time";
  var schedule = [
    {
      "morning": [
        "10:00 AM ",
        "10:30 AM ",
        "11:00 AM ",
        "10:00 AM ",
        "10:30 AM ",
        "11:00 AM ",
        "10:30 AM ",
        "11:00 AM "
      ],
      "afternoon": [
        "01:00 AM ",
        "01:30 AM ",
        "02:00 AM ",
        "02:30 AM ",
        "03:30 AM ",
        "02:00 AM ",
        "02:30 AM ",
        "03:30 AM "
      ],
      "evening": [
        "06:00 AM ",
        "06:30 AM ",
        "07:00 AM ",
        "07:30 AM ",
        "08:30 AM "
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.purple[500],
                      Colors.pink.shade300,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      // topLeft: Radius.circular(10),
                      // topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.034,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 0),
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home_2()),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  text,
                                  style: TextStyle(
                                    fontFamily: "DM Sans",
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: CalendarTimeline(
                        initialDate: initialDate,
                        firstDate: firstDate,
                        lastDate: lastDate,
                        onDateSelected: (date) => print(date),
                        leftMargin: 20,
                        monthColor: Colors.white,
                        dayColor: Colors.white,
                        //dayNameColor: Color(0xFF333A47),
                        activeDayColor: Colors.white,
                        activeBackgroundDayColor: Colors.redAccent[100],
                        dotsColor: Color(0xFF333A47),
                        selectableDayPredicate: (date) => date.day != 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Available Time",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        color: const Color(0xFF9B318B),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Morning",
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      height: 110,
                      child: GridView.builder(
                        itemCount: schedule[0]['morning'].length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: (1 / 0.5),
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              print("Clicked");
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.pink[300]),
                                      child: Center(
                                        child: Text(
                                          schedule[0]['morning'][index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Afternoon",
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      height: 110,
                      child: GridView.builder(
                        itemCount: schedule[0]['afternoon'].length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: (1 / 0.5),
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              print("Clicked");
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.pink[300]),
                                      child: Center(
                                        child: Text(
                                          schedule[0]['afternoon'][index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    //
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Evening",
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    //
                    SizedBox(
                      height: 110,
                      child: GridView.builder(
                        itemCount: schedule[0]['evening'].length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: (1 / 0.5),
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              print("Clicked");
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.pink[300]),
                                      child: Center(
                                        child: Text(
                                          schedule[0]['evening'][index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
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
                          fontWeight: FontWeight.w400,
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
                    width: MediaQuery.of(context).size.width * 0.12,
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
                    "30 Min",
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
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              //2nd Row
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  Container(
                    //Container Size
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
                    width: MediaQuery.of(context).size.width * 0.12,
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
                    width: MediaQuery.of(context).size.width * 0.62,
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
                    width: MediaQuery.of(context).size.width * 0.05,
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
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TouchableOpacity(
                    activeOpacity: 0.4,
                    onTap: () {
                      print("Add more services");
                    },
                    child: Text(
                      "Add more services",
                      style: TextStyle(
                        color: const Color(0xff982877),
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.16,
                    color: Color(0xffDFE5ED),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: TextField(
                        autofocus: false,
                        style:
                            TextStyle(fontSize: 10.0, color: Color(0xff982877)),
                        decoration: InputDecoration(
                          hintText: 'Any Special Requests',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
              GestureDetector(
              
                 onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Checkout()),
                              ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.shade500,
                        Colors.pink.shade200,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Schedule",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
