import 'package:flutter/material.dart';

class CommunicateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      margin: EdgeInsets.only(right: 45.0, left: 45.0, top: 5.0, bottom: 25.0),
      child: Card(
          color: Theme.of(context).primaryColorDark,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  height: 50.0,
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    child: new CircleAvatar(
                        backgroundColor: Colors.lightGreen[600],
                        foregroundColor: Colors.white,
                        child: IconButton(
                          iconSize: 19.0,
                          icon: Icon(Icons.call),
                          onPressed: () {},
                        )),
                  )),
              Container(
                  margin: EdgeInsets.only(right: 35.0, left: 35.0),
                  height: 50.0,
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    child: new CircleAvatar(
                        backgroundColor: Colors.red[400],
                        foregroundColor: Colors.white,
                        child: IconButton(
                          iconSize: 19.0,
                          icon: Icon(Icons.message),
                          onPressed: () {},
                        )),
                  )),
              Container(
                  alignment: Alignment.centerRight,
                  height: 50.0,
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    child: new CircleAvatar(
                        backgroundColor: Colors.blueAccent[400],
                        foregroundColor: Colors.white,
                        child: IconButton(
                          iconSize: 19.0,
                          icon: Icon(Icons.place),
                          onPressed: () {},
                        )),
                  ))
            ],
          )),
    );
  }
}
