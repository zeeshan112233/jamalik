import 'package:flutter/material.dart';
import 'package:jamalik/Buttons.dart';
import 'package:jamalik/Ui/Verifyidentity.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import './constants/colors.dart';

//New Class
class Passwordrecovery extends StatefulWidget {
  @override
  PasswordrecoveryState createState() => PasswordrecoveryState();
}

class PasswordrecoveryState extends State<Passwordrecovery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                // height: 200,
                // width: 300,
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
              ),
              Positioned(
                top: 170,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(50.0),
                          topRight: const Radius.circular(50.0),
                          // bottomLeft: const Radius.circular(10.0),
                          // bottomRight: const Radius.circular(10.0),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                          ),
                          Text("Password Recovery ",
                              style: TextStyle(fontSize: 24)),
                          SizedBox(height: 5),
                          Text(
                            "Enter your Phone number to recover your password",
                            style: TextStyle(
                              color: Color(0xff989BAD),
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.04),
                            child: country_TF(),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                          PinkButtons(
                            Buttontext: "SEND CODE",
                            TextColor: Colors.white,
                            onpress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Verifyidentity()),
                              );
                            },
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.13,
                left: MediaQuery.of(context).size.width * 0.4,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(90.0),
                      topRight: const Radius.circular(90.0),
                      bottomLeft: const Radius.circular(90.0),
                      bottomRight: const Radius.circular(90.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/Passwordimage.png'),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('images/signinlogo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
