import 'package:flutter/material.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

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
                  height: MediaQuery.of(context).size.height * 0.85,
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
                      Text("OTP Authentication "),
                      Text("An authentication code has been sent to"),
                      PinCodeTextField(),
                      Row(
                        children: [
                          Text(" i didn't receive any code."),
                          GestureDetector(
                            child: Text(
                              "Resend code!",
                              style: TextStyle(color: Colors.purple.shade800),
                            ),
                            onTap: () => print("Resend Code"),
                          ),
                        ],
                      ),
                      SignIn(),
                      Row(
                        children: [
                          Text(" By signing up, you agree to our."),
                          GestureDetector(
                            child: Text(
                              "Term and Conditions",
                              style: TextStyle(color: Colors.purple.shade800),
                            ),
                            onTap: () => print("Term and Conditions Tapped"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 150,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(90.0),
                      topRight: const Radius.circular(90.0),
                      bottomLeft: const Radius.circular(90.0),
                      bottomRight: const Radius.circular(90.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/NAPS.png'),
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
