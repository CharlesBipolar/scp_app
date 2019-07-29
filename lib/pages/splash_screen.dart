
import 'dart:async';
import 'package:scp_app/pages/warning.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, "/WarningPage"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                  right: 60.0,
                ),
                child: Image.asset("images/newlogo.png"),
              ),
              SizedBox(height: 20.0),
              Text(
                "We are Loading."
                    "\nplease stand by",
                style: TextStyle(
                  fontFamily: "FiraMono-Regular",
                  fontWeight: FontWeight.w900,
                  fontSize: 26.0,
                  color: Colors.white
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
