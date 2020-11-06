import 'package:flutter/material.dart';
import 'changePassword_widget.dart';
import '../../../../../Const.dart';

class changePasswordScreen extends StatefulWidget {
  @override
  _changePasswordScreenState createState() => new _changePasswordScreenState();
}

class _changePasswordScreenState extends State<changePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: Center(child:new changePasswordScreenWidget()),
      backgroundColor: Constants.dark_background,
    );
  }
}
