import 'package:flutter/material.dart';
import 'package:jamalik/Ui/Favourites.dart';
import 'package:jamalik/Ui/MyServices1.dart';
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
                Image.asset(dp),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hey, $name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 28.0, top: 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Welcome to jamalik',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Edit Profile',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ListTile(
                //   title: Text(
                //     'Dashboard',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                //   onTap: () => {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => dashboard(),
                //       ),
                //     )
                //   },
                // ),

                SizedBox(height: 20.0),
                ListTile(
                  title: Text(
                    'My Services',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyServices1(),
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
                        builder: (context) => Favourite(),
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
