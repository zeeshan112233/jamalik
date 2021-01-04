import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.grey[200],
        textColor: Colors.black87,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {},
        child: Text(
          "Create an account",
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.grey[200],
        textColor: Colors.black87,
        padding: EdgeInsets.zero,
        shape: StadiumBorder(),
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 90.0),
          decoration: ShapeDecoration(
            shape: StadiumBorder(),
            gradient: LinearGradient(
              colors: [
                Colors.purple[500],
                Colors.amber[500],
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            "SIGN IN",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
