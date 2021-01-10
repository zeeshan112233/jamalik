import 'package:flutter/material.dart';
import 'package:jamalik/Buttons.dart';
import 'package:jamalik/Ui/home_2.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

import 'GettingStarted.dart';

//New Class
class ResetPassword extends StatefulWidget {
  @override
  ResetPasswordState createState() => ResetPasswordState();
}

class ResetPasswordState extends State<ResetPassword> {
  bool passwordvalid = false;
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
                  height: MediaQuery.of(context).size.height * 0.78,
                  child: SingleChildScrollView(
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.85,
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
                          Text(
                            "Reset your Password",
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Atleast 8 characters, with uppercase and lowercase",
                            style: TextStyle(
                              color: Color(0xff989BAD),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "letters",
                            style: TextStyle(
                              color: Color(0xff989BAD),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  child: Text("New Password"),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                TF(
                                  controller: null,
                                  hintText: '**********',
                                  // isPassword: true,
                                  prefixIcon: Icons.lock,
                                  suffixIcon:
                                      passwordvalid ? Icons.person : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  child: Text("Confirm Password"),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                TF(
                                  controller: null,
                                  hintText: '**********',
                                  // isPassword: true,
                                  prefixIcon: Icons.lock,
                                  suffixIcon:
                                      passwordvalid ? Icons.person : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          PinkButtons(
                            TextColor: Colors.white,
                            Buttontext: "SIGN IN",
                            onpress: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home_2()),
                              )
                            },
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.136,
                left: MediaQuery.of(context).size.width * 0.4,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.all(
                      Radius.circular(90.0),
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
