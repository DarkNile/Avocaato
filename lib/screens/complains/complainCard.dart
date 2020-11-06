import 'package:flutter/material.dart';
import 'package:avocato/screens/complains/complainDetails/detailsScreen.dart';
import 'package:page_transition/page_transition.dart';
import '../../Const.dart';

class ComplainCard extends StatelessWidget {
  String title;
  String complain;

  ComplainCard({this.title, this.complain});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailsScreen()));

//        Navigator.push(
//            context,
//            new MaterialPageRoute(
//                builder: (BuildContext) => new DetailsScreen()));
      },
      child: Card(
        elevation: 5.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
//              color: Colors.grey[100],
            color:Constants.dark_background,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.question_answer,color: Theme.of(context).primaryColorDark,size: 15,),
                          ),
                          Container(
                            child: Text(Constants.convertToArabicNumbers("150") , style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
                          ),
                        ],
                      )),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.timelapse,color: Theme.of(context).primaryColorDark,size: 15,),
                      ),
                      Container(
                        child: Text("منذ "+ Constants.convertToArabicNumbers("3") +" ايام" , style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
                      ),
                    ],
                  )),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.question_answer,color: Theme.of(context).primaryColorDark,size: 15.0,),
                      ),
                      Container(
                        child: Text("منذ 3 ايام" , style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
                      ),
                    ],
                  )),
                ],
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
                color:Theme.of(context).primaryColor
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerRight,
              child: Text(
                complain,
                style: TextStyle(fontSize: 14.0,color: Theme.of(context).primaryColorLight),
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
                    color:Colors.green,
                      child: new Text("اقرأ التفاصيل",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
//                              color: Colors.white
                          color:Theme.of(context).primaryColorLight
                          )),
                      onPressed: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailsScreen()));
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
