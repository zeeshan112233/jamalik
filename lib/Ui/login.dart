import 'package:flutter/material.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

//New Class
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
                      Text("Let's Sign You In"),
                      Text("Welcome back you've been missed!"),
                      Text("Phone Number"),
                      TF(
                        controller: null,
                        hintText: '(+974) 55 555 555',
                        // isPassword: true,
                        prefixIcon: Icons.lock,
                        suffixIcon: passwordvalid ? Icons.person : null,
                        tfColor: Colors.grey.shade300,
                      ),
                      Text("Password"),
                      TF(
                        controller: null,
                        hintText: '**********',
                        // isPassword: true,
                        prefixIcon: Icons.lock,
                        suffixIcon: passwordvalid ? Icons.person : null,
                        tfColor: Colors.grey.shade300,
                      ),
                      Row(
                        children: [
                          Text(" Forgot"),
                          GestureDetector(
                            child: Text(
                              "Password!",
                              style: TextStyle(color: Colors.blue.shade800),
                            ),
                            onTap: () => print("Forgot touched"),
                          ),
                        ],
                      ),
                      SignIn(),
                      CreateAccount(),
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
