import 'package:flutter/material.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';
import 'package:jamalik/widgets/PincodeField.dart';
import 'package:jamalik/widgets/Card.dart';
//New Class
class AR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Center(
            child: Text("AR Buttons"),
          ),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              CreateAccount(),
              SizedBox(
                height: 30.0,
              ),
              //Sign in Button
              SignIn(),
              SizedBox(
                height: 20.0,
              ),
              PincodeField(),
              SizedBox(
                height: 40.0,
              ),
              MyCard(),
              SizedBox(
                height: 20.0,
              ),
              //Schedule Button
              Expanded(
                child: FlatButton(
                  color: Colors.grey[200],
                  textColor: Colors.black87,
                  onPressed: () {},
                  child: Container(
                    width: 380,
                    height: 215,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple[500],
                          Colors.amber[500],
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
                        ),
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
