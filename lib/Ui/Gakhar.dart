import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:jamalik/widgets/TF.dart';

//New Class
class Gakhar extends StatefulWidget {
  @override
  _GakharState createState() => _GakharState();
}

class _GakharState extends State<Gakhar> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  void iniState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gakhar"),
      ),
      body: Container(
        child: Column(
          children: [
            TF(
              controller: _emailController,
              hintText: 'Email',
              prefixIcon: Icons.no_cell,
              tfColor: Colors.grey.shade300,
            ),
            TF(
              controller: _passwordController,
              hintText: 'Password',
              isPassword: true,
              prefixIcon: Icons.lock,
              tfColor: Colors.grey.shade300,
            ),
            country_TF(),
          ],
        ),
      ),
    );
  }
}
