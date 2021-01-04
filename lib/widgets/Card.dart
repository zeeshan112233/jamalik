import 'package:flutter/material.dart';

// class Card extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         //color: Colors.white,
//         //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//         children: [
//         ListTile(
//           leading: Icon(
//             Icons.phone,
//             color: Colors.teal,
//           ),
//           title: Text(
//             "0333 1234567",
//             style: TextStyle(
//                 color: Colors.teal.shade900,
//                 fontFamily: 'Source Sans Pro',
//                 fontSize: 15.0),
//           ),
//         ),]
//         );
//   }
// }
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                    color: Colors.white,
                    
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "0333 1234567",
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15.0),
                      ),
                    )
                  ),
              ),
              
            ],
          ),
        
      
    );
  }
}