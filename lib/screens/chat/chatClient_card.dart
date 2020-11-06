import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../Const.dart';

class chatClientCart extends StatefulWidget {
  String message;

  chatClientCart({this.message});

  @override
  _chatClientCartState createState() => _chatClientCartState();
}

class _chatClientCartState extends State<chatClientCart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // messages..
        Flexible(
            child: Container(
          width: Constants.MESSAGE_WIDTH,
          padding: EdgeInsets.all(Constants.MESSAGE_PADDING),
          margin: EdgeInsets.all(Constants.MESSAGE_MARGIN),
          decoration: BoxDecoration(
//              color: MESSAGE_BACKGROUND_COLOR,
          color:Colors.white70,
              borderRadius: BorderRadius.circular(Constants.MESSAGE_RADIUS)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: AutoSizeText(
                  widget.message,
                  style: TextStyle(
                      fontSize: Constants.MESSAGE_FONT_SIZE, color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "12:40",
                    style: TextStyle(
                        fontSize: Constants.MESSAGE_DATE_FONT_SIZE,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        )),
      ],
    );
  }
}
