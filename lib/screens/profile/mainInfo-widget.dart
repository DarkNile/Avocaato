import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  String telNo, worktelNo, address, about;

  MainInfo({this.telNo, this.worktelNo, this.address, this.about});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: ListView(
          children: <Widget>[
            new Container(
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.centerRight,
                child: Column(children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "رقم الهاتف",
                      style: new TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColorLight
//                                  color: Colors.grey
                          ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      telNo,
                      style:
                          TextStyle(color: Theme.of(context).primaryColorDark),
                    ),
                  )
                ])),
            new Container(
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.centerRight,
                child: Column(children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "رقم العمل",
                      style: new TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColorLight
//                                          color: Colors.grey
                          ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Text(worktelNo,
                          style: TextStyle(
                              color: Theme.of(context).primaryColorDark)))
                ])),
            new Container(
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.centerRight,
                child: Column(children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "عنوان العمل",
                      style: new TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColorLight
//                                         color: Colors.grey
                          ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Text(address,
                          style: TextStyle(
                              color: Theme.of(context).primaryColorDark)))
                ])),
            new Container(
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.centerRight,
                child: Column(children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      " نبذه مختصره",
                      style: new TextStyle(
                          fontSize: 15.0,
//                                         color: Colors.grey
                          color: Theme.of(context).primaryColorLight),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(about,
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark)),
                  )
                ])),
          ],
        ),
        preferredSize: Size.fromHeight(300.0));
  }
}
