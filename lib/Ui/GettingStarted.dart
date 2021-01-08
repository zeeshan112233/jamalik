import 'package:flutter/material.dart';
import 'package:jamalik/Buttons.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

//New Class
class GettingStarted extends StatefulWidget {
  @override
  GettingStartedState createState() => GettingStartedState();
}

class GettingStartedState extends State<GettingStarted> {
  bool valid = true;
  int radioValue = 0;
  double _finalresult = 0.0;
  String _formattedtext = "";
//method for radio button
  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:

        case 1:
      }
    });
  }

  //method for check box
  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

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
                          Text("Getting Started"),
                          Text("Create an Account to to continue!"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Full Name"),
                                TF(
                                  controller: null,
                                  hintText: 'Aish',
                                  // isPassword: true,
                                  prefixIcon: Icons.person,
                                  suffixIcon: valid ? Icons.check_box : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                Text("Last Name"),
                                TF(
                                  controller: null,
                                  hintText: '**********',
                                  // isPassword: true,
                                  prefixIcon: Icons.lock,
                                  suffixIcon: valid ? Icons.check_box : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                Text("Phone Number"),
                                TF(
                                  controller: null,
                                  hintText: '(+974) 555 555 555',
                                  // isPassword: true,
                                  prefixIcon: Icons.phone_android,
                                  suffixIcon: valid ? Icons.check_box : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new Radio<int>(
                                        activeColor: Colors.purple.shade400,
                                        value: 0,
                                        groupValue: radioValue,
                                        onChanged: handleRadioValueChanged),
                                    new Text(
                                      "Male",
                                      style: new TextStyle(color: Colors.black),
                                    ),
                                    new Radio<int>(
                                        activeColor: Colors.purple.shade400,
                                        value: 1,
                                        groupValue: radioValue,
                                        onChanged: handleRadioValueChanged),
                                    new Text(
                                      "Female",
                                      style: new TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Text("Password"),
                                TF(
                                  controller: null,
                                  hintText: '**********',
                                  isPassword: true,
                                  prefixIcon: Icons.phone_android,
                                  suffixIcon: valid ? Icons.check_box : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                Text("Password"),
                                TF(
                                  controller: null,
                                  hintText: '**********',
                                  isPassword: true,
                                  prefixIcon: Icons.phone_android,
                                  suffixIcon: valid ? Icons.check_box : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                Text("Confirm Password"),
                                TF(
                                  controller: null,
                                  hintText: '**********',
                                  isPassword: true,
                                  prefixIcon: Icons.phone_android,
                                  suffixIcon: valid ? Icons.check_box : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        activeColor: Colors.pink.shade600,
                                        value: rememberMe,
                                        onChanged: _onRememberMeChanged),
                                    Text("Agree with Our Privacy Policy & "),
                                    GestureDetector(
                                        child: Text(
                                          "Terms & Condition",
                                          style: TextStyle(
                                              color: Colors.pink.shade600),
                                        ),
                                        onTap: () =>
                                            print("Terms and Condition")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(" Already have an Account? "),
                              GestureDetector(
                                child: Text(
                                  "Sign in!",
                                  style: TextStyle(
                                      color: Colors.pink.shade600,
                                      fontSize: 20),
                                ),
                                onTap: () => print("Signin touched"),
                              ),
                            ],
                          ),
                          PinkButtons(
                            TextColor: Colors.white,
                            Buttontext: "SIGN IN",
                          ),
                        ],
                      ),
                    ),
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
