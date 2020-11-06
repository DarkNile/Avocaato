import 'package:avocato/screens/profile/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../Const.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: new Container(),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.only(right: 8.0, left: 8.0),
            child: RaisedButton(
              onPressed: () {
                _showCupertinoDialog(context);
              },
              color:  Colors.lightGreen[600],
              textColor: Constants.dark_textBackgroundPrimary,
              child: Text(
                'قم بتقيم هذا المحامى',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
            )),
        body: new ProfileWidget());
  }
}

_dismissDialog(BuildContext context) {
  Navigator.pop(context);
}

void _showCupertinoDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(

          title: Text('إعطاء تقيم'),
          content: new Column(
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              FlutterRatingBar(
                initialRating: 0,
                itemSize: 40.0,
                fillColor: Colors.amber,
                borderColor: Colors.amber,
                allowHalfRating: true,
                onRatingUpdate: (rating) {
                  print(rating);
                },
                textDirection: TextDirection.rtl,
              ),

            ],
          ),
          actions: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 5.0, right: 10.0, left: 10.0),
                  child: Card(
                    color: Colors.transparent,
                    elevation: 0.0,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          minLines: 5,
                          maxLines: 15,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              hintText: 'اترك تعليق',
                              filled: true,
                              fillColor:  Colors.black12),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        _dismissDialog(context);
                      },
                      child: Container(
                          child: Text('تقيم ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.white
                              ))),
                    )),
              ],
            )
          ],
        );
      });
}
