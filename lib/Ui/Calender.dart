import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

class Calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          color: Colors.pink,
          height: 250,
          child: CalendarTimeline(
            initialDate: DateTime(2020, 2, 20),
            firstDate: DateTime(2020, 2, 15),
            lastDate: DateTime(2021, 11, 20),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.white70,
            dayColor: Colors.teal[200],
            //dayNameColor: Color(0xFF333A47),
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.redAccent[100],
            dotsColor: Color(0xFF333A47),
            selectableDayPredicate: (date) => date.day != 25,
          ),
        ),
      ),
    );
  }
}
