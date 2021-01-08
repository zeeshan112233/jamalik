import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/Serviceswidget.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

//New Class
class MyServices1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "My Services",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    MyAppointments(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    CompletedServices(),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Services();
                    }),
              )
              // Services()
            ],
          ),
        ),
      ),
    );
  }
}
