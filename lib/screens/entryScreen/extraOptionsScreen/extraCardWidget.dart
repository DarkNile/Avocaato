import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class extraCardWidget extends StatelessWidget {
  Icon cardIcon;
  String title;
  Object pageTransferName;

  extraCardWidget({this.cardIcon, this.title, this.pageTransferName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: pageTransferName));
        },
        child: Container(
            margin: EdgeInsets.only(top: 15.0),
            child: new Column(children: <Widget>[
              ListTile(
                trailing: cardIcon,
                leading: Icon(Icons.arrow_back_ios,color: Colors.grey,),
                title: new Text(
                  title,
                  textAlign: TextAlign.right,
style: TextStyle(color: Colors.grey),
                ),
              ),

            ])));
  }
}
