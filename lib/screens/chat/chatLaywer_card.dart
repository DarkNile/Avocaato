import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../Const.dart';

class chatLaywerCard extends StatefulWidget {
  String message;

  chatLaywerCard({this.message});

  @override
  _chatLaywerCardState createState() => _chatLaywerCardState();
}

class _chatLaywerCardState extends State<chatLaywerCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // messages..
        Flexible(
            child: Container(
          width:  Constants.MESSAGE_WIDTH,
          padding: EdgeInsets.all( Constants.MESSAGE_PADDING),
          margin: EdgeInsets.all( Constants.MESSAGE_MARGIN),
          decoration: BoxDecoration(
//              color: Colors.white,
          color:  Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular( Constants.MESSAGE_RADIUS)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: AutoSizeText(
                  widget.message,
                  style: TextStyle(
                      fontSize:  Constants.MESSAGE_FONT_SIZE,
//                      color: Colors.black
                  color:  Theme.of(context).primaryColor
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "12:45",
                    style: TextStyle(
                        fontSize:  Constants.MESSAGE_DATE_FONT_SIZE, color:  Theme.of(context).primaryColorLight),
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
