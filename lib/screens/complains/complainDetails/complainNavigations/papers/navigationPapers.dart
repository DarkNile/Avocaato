import 'package:flutter/material.dart';
import '../../../../../Const.dart';
class paperNavigations extends StatefulWidget {
  @override
  _paperNavigationsState createState() => _paperNavigationsState();
}

class _paperNavigationsState extends State<paperNavigations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text(
            "المستندات",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
//              color: Colors.black,
            color:Colors.green
            ),
            textDirection: TextDirection.rtl,
          ),
        ),
        Divider(
          indent: 10.0,
          endIndent: 10.0,
          color: Theme.of(context).primaryColorDark,
        ),
      ],
    );
  }
}
