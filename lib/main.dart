import 'package:flutter/material.dart';
import 'package:scp_app/pages/home.dart';
import 'package:scp_app/pages/splash_screen.dart';
import 'package:scp_app/pages/warning.dart';

var rotas = <String, WidgetBuilder> {
  "/WarningPage" : (BuildContext context) => WarningPage(),
  "/HomePage" : (BuildContext context) => HomePage(),
};

void main () => runApp(MyApp () );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome Agent",
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
      routes: rotas,
    );
  }
}
