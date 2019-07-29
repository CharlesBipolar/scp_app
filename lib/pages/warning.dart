import 'dart:async';

import 'package:flutter/material.dart';

class WarningPage extends StatefulWidget {
  @override
  _WarningPageState createState() => _WarningPageState();
}

class _WarningPageState extends State<WarningPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5), () => Navigator.pushNamed(context, "/HomePage"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "BEFORE YOU GOING",
            style: TextStyle(
                fontFamily: "FiraMono-Regular",
                fontWeight: FontWeight.w900,
                fontSize: 26.0,
                color: Colors.white),
          ),
          Text(
            "This is a serious"
                "\naplication for real"
                "\nagents on other"
                "\ncountries, if you are"
                "\nhere just to play, quit"
                "\nthe app now or real"
                "\nconsequences will"
                "\nhappen to"
                "\nyou!",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontFamily: "FiraMono-Regular",
                fontWeight: FontWeight.w900,
                fontSize: 26.0,
                color: Colors.white),
          ),
          Text(
            "view discretion is advised",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontFamily: "FiraMono-Regular",
                fontWeight: FontWeight.w900,
                fontSize: 26.0,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
