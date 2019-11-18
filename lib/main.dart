import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Etisalat-logo.png",
                    fit: BoxFit.cover,
                  ),
                  Text("Etisalat",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.green, fontSize: 50)),

                  Text("Etisalat is a telecomunication company this is multinational company in middle east",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.green, fontSize: 20, )),

                  Text("Mobile phone : 111",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold, fontSize: 20, )),

                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: FlatButton(child: Text("Contact Us"),
                      color: Colors.green,
                      onPressed: ()=>  launch("tel://111"),
                      textColor: Colors.white,
                      splashColor: Colors.yellow,),
                  ),

                ],
              )),
        ),
      ),
    );
  }
}
