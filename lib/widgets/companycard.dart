import 'package:flutter/material.dart';

class companycard extends StatelessWidget {
  companycard({
    this.mainbackgroungimage,
    this.companylogo,
    this.heartimage,
    this.shareimage,
    this.category,
    this.companycategory,
    this.companyname,
    this.starimage,
    this.ratings,
  });

  final String mainbackgroungimage;
  final String companylogo;
  final String heartimage;
  final String shareimage;
  final String category;
  final String companycategory;
  final String companyname;
  final String starimage;
  final String ratings;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 200,
        width: 400,
        margin: EdgeInsets.only(left: 15, top: 30, right: 15, bottom: 0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purpleAccent, Colors.pink.shade300]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: Image.asset(
          "images/paradise.png",
        ),
      ),
      Positioned(
        top: 50,
        left: 20,
        child: new Container(
            margin: EdgeInsets.all(10.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Image.asset(
                  companylogo,
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: 5),
                new Text(
                  category,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(height: 1),
                new Text(
                  companycategory,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 1),
                new Text(
                  companyname,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(height: 5),
              ],
            )),
      ),
      Positioned(
        top: 167,
        left: 20,
        child: new Container(
          margin: EdgeInsets.all(10.0),
          child: new Row(children: [
            Row(
              children: List.generate(5, (Null) {
                return new Icon(
                  Icons.star,
                  color: (Colors.white),
                );
              }),
            ),

            SizedBox(width: 10),

            Text(
              ratings,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),

            //space between button and rating
            SizedBox(width: 110),
            RaisedButton(
              onPressed: () => print("hey "),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5)),
              color: Colors.white,
              textColor: Colors.purple.shade600,
              child: Text('Button', style: TextStyle(fontSize: 20)),
            ),
          ]),
        ),
      ),
      Positioned(
        left: 320,
        top: 35,
        child: new Container(
          margin: EdgeInsets.all(10.0),
          child: new Row(children: [
            new Image.asset(
              heartimage,
            ),
            SizedBox(width: 10),
            new Image.asset(
              shareimage,
            ),
          ]),
        ),
      ),
    ]);
  }
}
