import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Const.dart';

class inputSegment extends StatefulWidget {
  @override
  _inputSegmentState createState() => _inputSegmentState();
}

class _inputSegmentState extends State<inputSegment> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextField(
              textAlign: TextAlign.right,
              onChanged: (text) {
                setState(() {
                });
              },
              decoration: InputDecoration.collapsed(
                hintText: "اكتب رساله",
                hintStyle: TextStyle(color:  Theme.of(context).primaryColorLight)
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
              margin: EdgeInsets.only(right: 2.0, left: 2.0),
              padding: EdgeInsets.only(
                  right: 10.0, left: 10.0, top: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular( Constants.SEND_BUTTON_RADIUS),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Icon(
                  Icons.image,
                  color:  Theme.of(context).primaryColorLight,
                  size: 30.0,
                ),
              )),
        ),
        IconButton(
          color: Colors.blue,
          icon: Icon(
            Icons.send,
          ),
          disabledColor:  Theme.of(context).primaryColorLight,
          onPressed: null,
        )
      ],
    );
  }
}
