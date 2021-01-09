import 'package:flutter/material.dart';
import 'package:jamalik/Ui/Gakhar.dart';
import 'package:jamalik/Ui/GettingStarted.dart';
import 'package:jamalik/Ui/Otpauthentication.dart';
import 'package:jamalik/Ui/Passwordrecovery.dart';
import 'package:jamalik/Ui/aboutapp.dart';
import 'package:jamalik/Ui/home_2.dart';
import 'package:jamalik/Ui/login.dart';
import 'package:jamalik/Ui/notification.dart';
import 'package:jamalik/Ui/ParadiseBeautySalon.dart';
import 'package:jamalik/Ui/ProviderScreen.dart';
import 'package:jamalik/Ui/ResetPassword.dart';
import 'package:jamalik/Ui/Servicesscreen.dart';
import 'package:jamalik/Ui/Verifyidentity.dart';
import 'package:jamalik/Ui/home_2.dart';
import 'package:jamalik/Ui/login.dart';
import 'package:jamalik/widgets/Serviceswidget.dart';
import './Ui/welcome_home.dart';

void main() => runApp(new MaterialApp(
      title: "Welcome",
      home: new Passwordrecovery(), //welcome class define in ui folder
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
            builder: (context) => Passwordrecovery(),
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
