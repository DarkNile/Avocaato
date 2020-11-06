import 'package:flutter/material.dart';

class changePasswordScreenWidget extends StatefulWidget {
  @override
  _changePasswordWidgetState createState() => _changePasswordWidgetState();
}

class _changePasswordWidgetState extends State<changePasswordScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Container(
          margin: EdgeInsets.only(right: 40.0, left: 40.0),
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: 'كلمه السر القديمه',
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: Icon(
                Icons.lock_outline,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        new Container(
          margin: EdgeInsets.only(top: 10.0, right: 40.0, left: 40.0),
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                hintText: 'كلمه السر الجديده',
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(Icons.lock_outline)),
          ),
        ),
      ],
    ));
  }
}
