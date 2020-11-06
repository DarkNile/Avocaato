import 'package:flutter/material.dart';

import '../../../Const.dart';
import 'extraScreen_widget.dart';

class ExtraScreen extends StatefulWidget {
  @override
  _ExtraScreenState createState() => new _ExtraScreenState();
}

class _ExtraScreenState extends State<ExtraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: new ExtraScreenWidget(),
      backgroundColor: Constants.dark_background,
    );
  }
}
