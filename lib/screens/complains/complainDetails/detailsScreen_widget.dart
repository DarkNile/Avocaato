import 'package:flutter/material.dart';
import './complainNavigations/comments/navigationComments.dart';
import './complainNavigations/complains/navigationComplain.dart';
import './complainNavigations/papers/navigationPapers.dart';
import '../../../Const.dart';
class DetailsScreenWidget extends StatefulWidget {
  @override
  DetailsScreenWidgetState createState() => new DetailsScreenWidgetState();
}

class DetailsScreenWidgetState extends State<DetailsScreenWidget> {
  Widget currentWidget = complainNavigatoin();
  int currentNavigationIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.dark_background,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavigationIndex,
          backgroundColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white70,
selectedItemColor: Colors.green,
          iconSize: 25.0,
          //TODO THEME CHANGE
//          fixedColor: Colors.black45,
          items: [
            BottomNavigationBarItem(
              title: new Text("التعليقات"),
              icon: new Icon(Icons.comment),
            ),
            BottomNavigationBarItem(
                title: new Text("المستندات"), icon: new Icon(Icons.pages)),
            BottomNavigationBarItem(
                title: new Text("الأستشاره"), icon: new Icon(Icons.note)),
          ],
          onTap: (index) {
            if (index == 0) {
              currentWidget = commentsNavigations();
              currentNavigationIndex = 0;
            } else if (index == 1) {
              currentWidget = paperNavigations();
              currentNavigationIndex = 1;
            } else {
              currentWidget = complainNavigatoin();
              currentNavigationIndex = 2;
            }
            setState(() {});
          },
        ),
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: new Container(),
        ),
        body: ListView(
          children: <Widget>[currentWidget],
        ));
  }
}
