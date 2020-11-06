import 'package:flutter/material.dart';
import 'package:avocato/screens/complains/complainDetails/complainNavigations/comments/commentCard.dart';
import '../../../../../Const.dart';

class commentsNavigations extends StatefulWidget {
  @override
  _commentsNavigationsState createState() => _commentsNavigationsState();
}

class _commentsNavigationsState extends State<commentsNavigations> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        // comment..
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text(
            "التعليقات",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
//              color: Colors.black,
                color: Colors.green
            ),
            textDirection: TextDirection.rtl,
          ),
        ),

        Divider(
          indent: 10.0,
          endIndent: 10.0,
          color: Theme.of(context).primaryColorDark,
        ),
        // first comment...
        new commentCard(),

        new commentCard(),

      ],
    ));
  }
}
