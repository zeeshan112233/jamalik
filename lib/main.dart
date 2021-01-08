import 'package:flutter/material.dart';
import 'package:jamalik/Ui/login.dart';
import './Ui/welcome_home.dart';

void main() => runApp(new MaterialApp(
      title: "Welcome",
      home: new SplashScreen(), //welcome class define in ui folder
    ));

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E2537),
        body: Container(
          child: Image.asset(
            'images/splashscreen.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ));
  }
}
