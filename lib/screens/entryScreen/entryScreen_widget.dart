import 'package:avocato/screens/entryScreen/mainScreen/mainScreen.dart';
import 'package:avocato/screens/entryScreen/messageScreen/messageScreen.dart';
import 'package:avocato/screens/entryScreen/notificationScreen/notificationScreen.dart';
import 'package:flutter/material.dart';

import '../../Const.dart';
import 'extraOptionsScreen/extraScreeen.dart';


class EntryScreenWidget extends StatefulWidget {
  @override
  _EntryScreenWidgetState createState() => new _EntryScreenWidgetState();
}

class _EntryScreenWidgetState extends State<EntryScreenWidget> {
  Widget current = new MainScreen();

  _onTap(int index) {
    setState(() {
      if (index == 2) {
        // current = new NotificationScreen();
        current = MessageScreen();
        // current = ComplainScreen();
        //TODO YOU MUST LOGIN IN ORDER TO CONTINUE..
        // Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new MessageScreen()));
      } else if (index == 1) {
        current = NotificationScreen();
        // current = new MessageScreen();
        //TODO YOU MUST LOGIN IN ORDER TO CONTINUE..
        //  Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new NotificationScreen()));
      } else if(index == 0){
        current = new ExtraScreen();
      }else{
        current = new MainScreen();
      }
      _currentIndex = index;
    });
  }

  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //Todo return thememe colors.white
//      body: Center(
//height: double.maxFinite,
//          color:Theme.of(context).backgroundColor,
//          constraints: BoxConstraints.expand(),
//          child: current
//      ),
    body: current,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _onTap(index);
        },
        //TODO THEME CHANGE
//        backgroundColor: Colors.white70,
        backgroundColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white70,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        iconSize: 25.0,
        //TODO THEME CHANGE
//        fixedColor: Colors.black45,
//        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(

              icon: Icon(Icons.more_horiz), title: Text('المزيد')
          ),
          BottomNavigationBarItem(
            icon: new Stack(
              children: <Widget>[
                new Icon(Icons.notifications_active),
                Positioned(
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 11,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Text(
                        '16',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: new Text('الإشعارات'),
          ),
          BottomNavigationBarItem(
            icon: new Stack(
              children: <Widget>[
                Icon(Icons.message),
                Positioned(
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 11,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: new Text('رسايلى'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('الرئيسيه')),
        ],
      ),
    );
  }
}
