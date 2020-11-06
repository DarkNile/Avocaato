import 'package:flutter/material.dart';

import '../../../../../Const.dart';
import 'personalScreen_widget.dart';

class personalScreen extends StatefulWidget {
  @override
  _personalScreenState createState() => new _personalScreenState();
}

class _personalScreenState extends State<personalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: Center(child:new personalScreenWidget()),
      backgroundColor: Constants.dark_background,
    );
  }
}
