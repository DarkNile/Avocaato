import 'package:flutter/material.dart';

import '../../../../Const.dart';
import 'settingScreen_widget.dart';

class settingScreen extends StatefulWidget {
  @override
  _settingScreenState createState() => new _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: Center(child: new settingScreenWidget()),
      backgroundColor: Constants.dark_background,
    );
  }
}
