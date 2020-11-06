import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import '../extraCardWidget.dart';
import 'changePasswordScreen/changePassword.dart';
import 'personalScreen/personalScreen.dart';

class settingScreenWidget extends StatefulWidget {
  @override
  _settingcreenWidgetState createState() => _settingcreenWidgetState();
}

class _settingcreenWidgetState extends State<settingScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        extraCardWidget(
          cardIcon: Icon(
            Icons.person_outline,
            color: Colors.grey,
          ),
          title: "تعديل البيانات الشخصيه",
          pageTransferName: new personalScreen(),
        ),
        extraCardWidget(
          cardIcon: Icon(
            Icons.lock_outline,
            color: Colors.grey,
          ),
          title: "تغير كلمه السر",
          pageTransferName: new changePasswordScreen(),
        ),
        Container(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.only(right: 20.0, left: 5.0, top: 20.0),
                      child: Text(
                        "إختر لغه التطبيق",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.only(right: 15.0, left: 5.0, top: 20.0),
                        child: new Icon(
                          Icons.public,
                          color: Colors.grey,
                        ))
                  ],
                ),
                RadioButtonGroup(
                  orientation: GroupedButtonsOrientation.VERTICAL,

                  margin: const EdgeInsets.only(left: 12.0),

                  onSelected: (String selected) => setState(() {
//            _picked = selected;
                  }),

                  labels: <String>[
                    "عربى",
                    "انجليزى",
                  ],

//          picked: _picked,
                  itemBuilder: (Radio rb, Text txt, int i) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(top: 5.0, right: 2.0),
                          child: txt,
                        ),
                        new Container(
                            margin: EdgeInsets.only(top: 7.0, right: 2.0),
                            child: rb),
                      ],
                    );
                  },
                ),
              ],
            ))
      ],
    );
  }
}
