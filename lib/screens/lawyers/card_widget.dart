import 'package:avocato/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:page_transition/page_transition.dart';

import '../../Const.dart';

class CardWidget extends StatelessWidget {
  AssetImage image;
  String position, name;
  double ratingValue;
  int noOfPeople;

  CardWidget(
      {this.image,
      this.name,
      this.position,
      this.ratingValue,
      this.noOfPeople});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade, child: Profile()));
//        Navigator.push(context,
//            new MaterialPageRoute(builder: (context) => new Profile()));
      },
      child: Card(
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            child: new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Container(
                            padding:EdgeInsets.only(top:2.0),
                            child: new Text(
                              name,
                              style: TextStyle(
                                  fontSize: 14.0,
//                                              color: Colors.black87
                                  color: Theme.of(context).primaryColor),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          new Container(
                            child: new Text(position,
                                style: TextStyle(
                                    fontSize: 12.0,
//                                              color: Colors.grey
                                    color: Theme.of(context).primaryColorLight),
                                textDirection: TextDirection.rtl),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          FlutterRatingBar(
                            initialRating: ratingValue,
                            itemSize: 16.0,
                            fillColor: Colors.amber,
                            borderColor: Colors.amber.withAlpha(50),
                            allowHalfRating: true,
                            onRatingUpdate: null,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          new Container(
                            padding:EdgeInsets.only(bottom: 2.0),
                            child: new Text(
                                "التقيم العام من " +
                                    noOfPeople.toString() +
                                    " عميل",
                                style: TextStyle(
                                    fontSize: 9.0,
//                                              color: Colors.grey
                                    color: Theme.of(context).primaryColorDark),
                                textDirection: TextDirection.rtl),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.all(15.0),
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(fit: BoxFit.cover, image: image),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
