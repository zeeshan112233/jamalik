import 'package:flutter/material.dart';
import 'package:jamalik/APIs/loginAPI.dart';
import 'package:jamalik/Buttons.dart';
import 'package:jamalik/Ui/Otpauthentication.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

//New Class
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _phonenocontroller = new TextEditingController();
  //password textfield
  final TextEditingController _passwordcontroller = new TextEditingController();
  bool passwordvalid = true;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                height: screenheight,
                width: screenwidth,
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
                  height: screenheight - 170,
                  width: screenwidth,
                  child: SingleChildScrollView(
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
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10,
                          ),
                          Text("Let's Sign You In",
                              style: TextStyle(fontSize: 24)),
                          SizedBox(height: 5),
                          Text(
                            "Welcome back you've been missed!",
                            style: TextStyle(
                              color: Color(0xff989BAD),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  child: Text("Phone Number"),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                TF(
                                  controller: _phonenocontroller,
                                  hintText: '(+974) 555 555 555',
                                  // isPassword: true,
                                  isnumber: true,
                                  prefixIcon: Icons.phone_android,
                                  suffixIcon:
                                      _phonenocontroller.text.length == 8
                                          ? Icons.check_circle
                                          : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  child: Text("Password"),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                TF(
                                  controller: _passwordcontroller,
                                  hintText: '**********',
                                  isPassword: true,
                                  prefixIcon: Icons.lock,
                                  suffixIcon:
                                      _passwordcontroller.text.length >= 8
                                          ? Icons.check_circle
                                          : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(" Forgot "),
                              GestureDetector(
                                child: Text(
                                  "Password!",
                                  style: TextStyle(
                                    color: Color(0xffA63786),
                                  ),
                                ),
                                onTap: () => print("Forgot touched"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          !isloading
                              ? PinkButtons(
                                  Buttontext: "SIGN IN",
                                  TextColor: Colors.white,
                                  onpress: () => {
                                        if (_phonenocontroller.text.length != 8)
                                          {
                                            Fluttertoast.showToast(
                                                msg:
                                                    "Please Enter valid Phone number",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else if (_passwordcontroller
                                                .text.length <
                                            8)
                                          {
                                            Fluttertoast.showToast(
                                                msg:
                                                    "Password must be greater then 8",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.BOTTOM,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else
                                          {
                                            setState(() {
                                              isloading = true;
                                            }),
                                            Login()
                                                .login(
                                                    password:
                                                        _passwordcontroller
                                                            .text,
                                                    device_type: 'android',
                                                    token: '2342424')
                                                .then((value) => {
                                                          if (value.status)
                                                            {
                                                              setState(() {
                                                                isloading =
                                                                    false;
                                                              }),
                                                              // StoreProvider.of<Appstate>(context)
                                                              //     .dispatch(MyUser(value.user)),
                                                              print(value.user
                                                                  .toString()),
                                                              Fluttertoast.showToast(
                                                                  msg: 'Login Successfull with username : ' +
                                                                      value.user
                                                                          .name
                                                                          .toString()),
                                                              // Utils.pushReplacement(
                                                              //     context, AgentMainScreen(uid: value.user.id.toString()))
                                                            }
                                                          else
                                                            {
                                                              setState(() {
                                                                isloading =
                                                                    false;
                                                              }),
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          'Failed to login ')
                                                            },

                                                          print(value.status),
                                                          // setState(() {
                                                          //   _isLoading = false;
                                                          // })
                                                          // if (value) {Navigator.pop(context, true)}
                                                        }

                                                    // Navigator.push(
                                                    //   context,
                                                    //   MaterialPageRoute(
                                                    //       builder: (context) => Otpauthentication()),
                                                    // )
                                                    )
                                          },
                                      })
                              : Container(
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          WhiteButtons(
                            Buttontext: "Create Account",
                            onpress: () => {print("me bn rha hn")},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: screenwidth - 240,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(90.0),
                      topRight: const Radius.circular(90.0),
                      bottomLeft: const Radius.circular(90.0),
                      bottomRight: const Radius.circular(90.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'images/loginimage.png',
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.0,
                right: MediaQuery.of(context).size.width * 0.0,
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
