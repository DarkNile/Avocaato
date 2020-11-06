import 'package:avocato/screens/complains/complainDetails/detailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ComplainCardLawyer extends StatelessWidget {
  String title;
  String complain;

  ComplainCardLawyer({this.title, this.complain});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade, child: DetailsScreen()));

//        Navigator.push(
//            context,
//            new MaterialPageRoute(
//                builder: (BuildContext) => new DetailsScreen()));
      },
      child: Card(
        margin: EdgeInsets.all(15.0),
        elevation: 5.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              color: Theme.of(context).backgroundColor,
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                trailing: Stack(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(bottom: 10.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.jpg"),
                        radius: 25,
                      ),
                    )
                  ],
                ),
                title: Text(
                  "احمد عبد المجيد",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                onTap: () {
//              new MaterialPageRoute(builder: (context) => new chatScreen()));
                },
              ),
            ),
            Container(
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.only(top: 10.0, bottom: 0.0, right: 10.0),
              alignment: Alignment.centerRight,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
//                    color: Colors.blue
                    color: Theme.of(context).primaryColor),
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerRight,
              child: Text(
                complain,
                style: TextStyle(
                    fontSize: 14.0, color: Theme.of(context).primaryColorLight),
                textDirection: TextDirection.rtl,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Theme.of(context).accentColor,
                    padding: EdgeInsets.only(bottom: 5.0, right: 10.0),
                    alignment: Alignment.centerRight,
                    child: new FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
//                      color: Colors.red,
                      color: Colors.green,
                      child: new Text("اقرأ التفاصيل",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
//                              color: Colors.white
                              color: Theme.of(context).primaryColorLight)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: DetailsScreen()));
//
//                        Navigator.push(
//                            context,
//                            new MaterialPageRoute(
//                                builder: (BuildContext) =>
//                                    new DetailsScreen()));
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
