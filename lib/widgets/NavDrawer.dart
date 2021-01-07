import 'package:flutter/material.dart';
import 'package:jamalik/Ui/aboutapp.dart';
import 'package:jamalik/Ui/coupen.dart';
import 'package:jamalik/Ui/customersupport.dart';
import 'package:jamalik/Ui/dashboard.dart';
import 'package:jamalik/Ui/favourite.dart';
import 'package:jamalik/Ui/language.dart';
import 'package:jamalik/Ui/logout.dart';
import 'package:jamalik/Ui/myservice.dart';
import 'package:jamalik/Ui/notification.dart';

class NavDrawer extends StatelessWidget {
  NavDrawer({
    this.dp,
    this.name,
  });
  final String dp;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(top: 50.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purpleAccent, Colors.pink.shade300]),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new IconButton(
                      icon: new Icon(Icons.notifications),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () => print("bell icon tapped"),
                    ),
                    IconButton(
                      icon: new Icon(Icons.settings),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () => print("setting icon tapped"),
                    ),
                  ],
                ),
                Column(
                  children: [Image.asset(dp)],
                ),
                SizedBox(height: 50.0),
                ListTile(
                  title: Text(
                    'hey $name',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  title: Text(
                    'Welcome to jamalik',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  title: Text(
                    'Dashboard',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => dashboard(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'My Services',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myservice(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'Coupons',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => coupen(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'Favourite',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => favourite(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'Customer Support',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => customersupport(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'Notification',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => notification(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'Language',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => language(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'About App',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => aboutapp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => logout(),
                      ),
                    )
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
