import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class personalScreenWidget extends StatefulWidget {
  @override
  _personalScreenState createState() => _personalScreenState();
}

class _personalScreenState extends State<personalScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 40.0, left: 40.0),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'الأسم بالكامل',
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 10.0, right: 40.0, left: 40.0),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  hintText: 'رقم المحمول',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.mobile_screen_share)),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 10.0, right: 40.0, left: 40.0),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  hintText: 'عنوان البريد الإلكترونى',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.email,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RadioButtonGroup(
                  orientation: GroupedButtonsOrientation.HORIZONTAL,
                  margin: const EdgeInsets.only(left: 12.0),
                  onSelected: (String selected) => setState(() {
//                _picked = selected;
                    print(selected);
                  }),
                  labels: <String>[
                    "ذكر",
                    "انثى",
                  ],
//              picked: _picked,
                  itemBuilder: (Radio rb, Text txt, int i) {
                    return Row(
                      children: <Widget>[txt, rb],
                    );
                  },
                ),
                new Container(
                  child: Text("النوع"),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(bottom: 20.0),
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    splashColor: Colors.green,
                    color: Colors.green,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: Text(
                            "حفظ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      /* Navigator.push(context,MaterialPageRoute(builder: (context) => new Specialities()),);*/
                    },
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
