import 'package:flutter/material.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/TF.dart';

class home_2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<home_2> {
  String name = "Aisha";
  bool Beauty = false;
  bool Health = false;
  bool other = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // height: MediaQuery.of(context).size.height * 0.5,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: header_white(
                        prefixIcon: "images/prefix.png",
                        suffixIcon: "images/suffix.png",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                // Container(
                //   height: 50,
                //   width: 400,
                //   color: Colors.red,
                //   child: Row(),
                // ),
                TF(
                  controller: null,
                  hintText: 'Rawalpindi',
                  prefixIcon: Icons.location_pin,
                  suffixIcon: Icons.search,
                  tfColor: Colors.grey.shade300,
                ),
                Text(
                  "Hey, $name",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text("Welcome to Jumalik"),
                SizedBox(height: 5),
                Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "images/home_2pic.png",
                        width: 400.0,
                        height: 220.0,
                        fit: BoxFit.fill,
                      )),
                ),

                //............................................button1..................................................
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 1),
                            onPressed: () => {
                              setState(() {
                                Beauty = true;
                                Health = false;
                                other = false;
                              })
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff982877),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        50.0) //                 <--- border radius here
                                    ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 30.0),
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  gradient: Beauty
                                      ? LinearGradient(
                                          colors: [
                                            Colors.purple.shade500,
                                            Colors.pink.shade200,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )
                                      : LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                ),
                                child: Row(
                                  children: [
                                    Beauty
                                        ? Image.asset(
                                            "images/beautybtnwhite.png")
                                        : Image.asset(
                                            "images/beautybtnpink.png"),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                    ),
                                    Text(
                                      "Beauty",
                                      style: Beauty
                                          ? TextStyle(
                                              color: Colors.white,
                                              fontFamily: "DM Sans",
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400)
                                          : TextStyle(
                                              color: Colors.black,
                                              fontFamily: "DM Sans",
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          //.......................................Button2..................................................
                          FlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 1),
                            onPressed: () => {
                              setState(() {
                                Beauty = false;
                                Health = true;
                                other = false;
                              })
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff982877),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        50.0) //                 <--- border radius here
                                    ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 30.0),
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  gradient: Health
                                      ? LinearGradient(
                                          colors: [
                                            Colors.purple.shade500,
                                            Colors.pink.shade200,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )
                                      : LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                ),
                                child: Row(
                                  children: [
                                    Health
                                        ? Image.asset(
                                            "images/healthbtnwhite.png")
                                        : Image.asset(
                                            "images/healthbtnpink.png"),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                    ),
                                    Text(
                                      "Health",
                                      style: Health
                                          ? TextStyle(
                                              color: Colors.white,
                                              fontFamily: "DM Sans",
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400)
                                          : TextStyle(
                                              color: Colors.black,
                                              fontFamily: "DM Sans",
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
//...................................................button3...........................................
                          FlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 1),
                            onPressed: () => {
                              setState(() {
                                Beauty = false;
                                Health = false;
                                other = true;
                              })
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff982877),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        50.0) //                 <--- border radius here
                                    ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 30.0),
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  gradient: other
                                      ? LinearGradient(
                                          colors: [
                                            Colors.purple.shade500,
                                            Colors.pink.shade200,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )
                                      : LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                ),
                                child: Row(
                                  children: [
                                    other
                                        ? Image.asset(
                                            "images/healthbtnwhite.png")
                                        : Image.asset(
                                            "images/healthbtnpink.png"),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                    ),
                                    Text(
                                      "Others",
                                      style: other
                                          ? TextStyle(
                                              color: Colors.white,
                                              fontFamily: "DM Sans",
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400)
                                          : TextStyle(
                                              color: Colors.black,
                                              fontFamily: "DM Sans",
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return dotcard(
                            text: "Hairdressing Services",
                            customimage: "images/kainchi.png");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
