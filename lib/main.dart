import 'package:avocato/login_widget.dart';
import 'package:flutter/material.dart';

import 'Const.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      theme: isDark ? Constants.darkTheme : Constants.lightTheme,
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.dark_background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: new Container(),
      ),
      body: Center(
        child: LoginScreen1(
            primaryColor: Colors.red,
            backgroundColor: Colors.white54,
            backgroundImage: AssetImage("assets/images/law2.jpg"),
            logoColor: Colors.white),
      ),
    );
  }
}
