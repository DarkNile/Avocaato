import 'package:avocato/main.dart';
import 'package:avocato/screens/complains/complainCard.dart';
import 'package:avocato/screens/complains/complainDetails/detailsScreen_widget.dart';
import 'package:avocato/screens/lawyers/card_widget.dart';
import 'package:avocato/screens/signUp/visitorDistinguish.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Const.dart';
import 'complainDashboard.dart';
import '../../LaywerWidgets/complainWidgets/complainCardLawyer.dart';

class ComplainScreenDetails extends StatefulWidget {
  @override
  ComplainScreenDetailsState createState() => new ComplainScreenDetailsState();
}

class ComplainScreenDetailsState extends State<ComplainScreenDetails> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      backgroundColor: Colors.white,
    backgroundColor: Constants.dark_background,
      body: new ListView(
        children: <Widget>[
          complainDashboard(),
          Column(
            children: <Widget>[
//              new ComplainCardLawyer(
//                title: "صاحب البيت عايز يطردنى من البيت",
//                complain:
//                "البيت اللى ساكت فيه صاحب البيت عايز يخرجنى بالعافيه و مش عارف اعمل ايه رحت القسم و اشتكيت بس محدش عبرنى و انا قلقان جداا لانه راجل ابن ستين كلب",
//              ),
              new ComplainCard(
                title: "صاحب البيت عايز يطردنى من البيت",
                complain:
                    "البيت اللى ساكت فيه صاحب البيت عايز يخرجنى بالعافيه و مش عارف اعمل ايه رحت القسم و اشتكيت بس محدش عبرنى و انا قلقان ",
              ),
              new ComplainCard(
                title: "اتخانقت مع جارتى ورفعت عليا قضيه فى المحكمه",
                complain:
                    "البيت اللى مش عارف اعمل ايه رحت القسم و اشتكيت بس محدش عبرنى و انا قلقان جداا ",
              ),
              new ComplainCard(
                title: "اخويا عايز يضربنى بالعافيه",
                complain:
                    " اللى سً بالعافيه و مش عارف اعمل ايه رحت القسم و اشتكيت بس محدش عبرنى و انا قلقان جداا ",
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: (){
          _showCupertinoDialog(context);
        },
      ),

    );
  }
}

void _showCupertinoDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('كتابه استشاره قانونيه'),
          content: new Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10.0, right: 10.0, left: 10.0),

                child: Card(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        minLines: 1,
                        maxLines: 2,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: 'عنوان الشكوى',
                            filled: true,
                          fillColor: Colors.black12),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5.0, right: 10.0, left: 10.0),
                child: Card(
                  color: Colors.blueAccent,
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        cursorColor: Colors.black,

                        minLines: 8,
                        maxLines: 15,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: 'تفاصيل الشكوى',

                            filled: true,
                            fillColor: Colors.black12
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(

                alignment: Alignment.centerRight,
                  margin: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      _dismissDialog(context);
                    },
                    child: Container(
                        child: Text('اضافه مستندات ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                color: Colors.white))),
                  )),


            ],
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                    margin: EdgeInsets.all(5.0),
                    child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        _dismissDialog(context);
                      },
                      child: Container(
                          child: Text('إلغاء',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.white))),
                    )),

                Container(
                    margin: EdgeInsets.all(5.0),
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        _dismissDialog(context);
                      },
                      child: Container(
                          child: Text('تأكيد',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.white))),
                    )),
              ],
            )
          ],
        );
      });
}

_dismissDialog(BuildContext context) {
  Navigator.pop(context);
}
