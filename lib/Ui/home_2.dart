import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamalik/Ui/FAQ.dart';
import 'package:jamalik/Ui/Favourites.dart';
import 'package:jamalik/Ui/notification.dart';
import 'package:jamalik/redux/model/app_state.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/NavDrawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:jamalik/Ui/Servicesscreen.dart';

class home_2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<home_2> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  String name = "Aisha";
  bool Beauty = true;
  bool Health = false;
  bool other = false;

  var services = [
    {'text': "Hairdressing Services", 'customimage': "images/kainchi.png"},
    {'text': "Cosmetology", 'customimage': "images/cos.png"},
    {'text': "Body Care", 'customimage': "images/leg.png"},
    {'text': "Spa Procedures", 'customimage': "images/spa.png"},
    {'text': "Nail Polish", 'customimage': "images/nail.png"},
    {'text': "Tanning Studios", 'customimage': "images/tan.png"},
    {'text': "Make Up ", 'customimage': "images/make.png"},
  ];

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Scaffold(
          drawer: NavDrawer(
            dp: "images/company2.jpeg",
            name: "Jamalik",
          ),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenheight * 0.06),
            child: AppBar(
                title: Center(
                  child: StoreConnector<Appstate, Appstate>(
                      converter: (store) => store.state,
                      builder: (context, state) {
                        return Text("Welcome "+
//                          state.user.firstName,
"Zeeshan",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        );
                      }),

                  // Text(
                  //   "Welcome $name!",
                  //   // textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //       color: Colors.black, fontWeight: FontWeight.w600),
                  // ),
                ),

                //  Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Hey, $name",
                //       style:
                //           TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                //     ),
                //     // Text("Welcome to Jamalik"),
                //   ],
                // ),
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: new Image.asset('images/menuu.png'),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
                backgroundColor: Colors.white,
                actions: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notification()));
                    },
                    child: IconButton(
                      icon: new Image.asset('images/not.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ]),
          ),

          // drawer: NavDrawer(
          //   dp: "images/logo.png",
          //   name: "Ifraham :p",
          // ),
          body: _cIndex == 0
              ? Container(
            height: screenheight - kToolbarHeight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),

                  //location text field
                  // TextField(
                  //   controller: null,
                  //   decoration: InputDecoration(
                  //     isDense: true,
                  //     contentPadding: EdgeInsets.all(0),
                  //     prefixIcon: Icon(Icons.location_pin),
                  //     suffixIcon: Icon(Icons.search),
                  //     hintText: 'Enter a search term',
                  //     fillColor: Colors.grey.shade300,
                  //     filled: true,
                  //     focusedBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: Colors.grey.shade300,
                  //         width: 0.5,
                  //       ),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  //       borderSide: BorderSide(
                  //         color: Colors.grey.shade300,
                  //         width: 1.0,
                  //       ),
                  //     ),
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: Colors.grey.shade300,
                  //         width: 1.0,
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       "Hey, $name",
                  //       style: TextStyle(
                  //           fontSize: 30, fontWeight: FontWeight.bold),
                  //     ),
                  //     Text("Welcome to Jamalik"),
                  //   ],
                  // ),

                  SizedBox(height: 5),
                  Center(
                    // child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     child: Image.asset(
                    //       "images/home_2pic.png",
                    //       width: screenwidth,
                    //       height: screenheight * 0.25,
                    //       fit: BoxFit.fill,
                    //     )),
                    child: SizedBox(
                        height: screenheight * 0.25,
                        width: screenwidth,
                        child: Carousel(
                          indicatorBgPadding: 0.0,
                          dotColor: Colors.pink[300],
                          //moveIndicatorFromBottom: 180.0,
                          //noRadiusForIndicator: true,
                          boxFit: BoxFit.fill,
                          borderRadius: true,
                          radius: Radius.circular(10),
                          images: [
                           Image.asset(
                              "images/home_2pic.png",
                              width: screenwidth,
                              height: screenheight * 0.25,
                               fit: BoxFit.fill,
                            ),
                            Image.asset(
                              "images/private1.jpeg",
                              width: screenwidth,
                              height: screenheight * 0.25,
                               fit: BoxFit.fill,
                            ), Image.asset(
                              "images/private2.jpeg",
                              width: screenwidth,
                              height: screenheight * 0.25,
                               fit: BoxFit.fill,
                            ),
                             Image.asset(
                              "images/company2.jpeg",
                              width: screenwidth,
                              height: screenheight * 0.25,
                               fit: BoxFit.fill,
                            ),

                            
                          ],
                        )),
                  ),

                  //............................................button1..................................................
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, top: 13),
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

                                  services = [
                                    {
                                      'text': "Hairdressing Services",
                                      'customimage': "images/kainchi.png"
                                    },
                                    {
                                      'text': "Cosmetology",
                                      'customimage': "images/cos.png"
                                    },
                                    {
                                      'text': "Body Care",
                                      'customimage': "images/leg.png"
                                    },
                                    {
                                      'text': "Spa Procedures",
                                      'customimage': "images/spa.png"
                                    },
                                    {
                                      'text': "Nail Polish",
                                      'customimage': "images/nail.png"
                                    },
                                    {
                                      'text': "Tanning Studios",
                                      'customimage': "images/tan.png"
                                    },
                                    {
                                      'text': "Make Up ",
                                      'customimage': "images/make.png"
                                    },
                                  ];
                                })
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff982877),
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          50.0) //                 <--- border radius here
                                      ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20.0),
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
                                        width:
                                            MediaQuery.of(context).size.width *
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
                                  services = [
                                    {
                                      'text': "Massage",
                                      'customimage': "images/massage.png"
                                    },
                                    {
                                      'text': "Sport Training",
                                      'customimage': "images/sports.png"
                                    },
                                    {
                                      'text': "Private Doctor",
                                      'customimage': "images/doctor.png"
                                    },
                                    {
                                      'text': "Diagnosis / Examination",
                                      'customimage': "images/exam.png"
                                    },
                                  ];
                                })
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff982877),
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          50.0) //                 <--- border radius here
                                      ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20.0),
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
                                        width:
                                            MediaQuery.of(context).size.width *
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
                            FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 1),
                              onPressed: () => {
                                setState(() {
                                  Beauty = false;
                                  Health = false;
                                  other = true;

                                  services = [
                                    {
                                      'text': "Consultaion",
                                      'customimage': "images/consult.png"
                                    },
                                  ];
                                })
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff982877),
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          50.0) //                 <--- border radius here
                                      ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20.0),
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
                                        width:
                                            MediaQuery.of(context).size.width *
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
                      child: ListView.builder(
                        itemCount: services.length,
                        itemBuilder: (context, index) {
                          return dotcard(
                              text: services[index]['text'],
                              customimage: services[index]['customimage']);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ):
          Faq(),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _cIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.purpleAccent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.purple,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white),
                  title: new Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle, color: Colors.white),
                  title: new Text(
                    'F.A.Q',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ))
            ],
            onTap: (index) {
              _incrementTab(index);
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: new FloatingActionButton(
            backgroundColor: Colors.pink[300],
            onPressed: () {
 Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Favourite(),
          ));


            },
            //tooltip: 'Increment',
            child: new Icon(Icons.library_add_check_rounded)
          ),
        ),
      ),
    );
  }
}
