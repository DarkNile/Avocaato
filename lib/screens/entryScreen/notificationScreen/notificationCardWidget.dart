import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Const.dart';
import '../../complains/complainDetails/detailsScreen.dart';

class NotificationCardWidget extends StatelessWidget {
  AssetImage image;
  String position, name;
  double ratingValue;
  int noOfPeople;

  NotificationCardWidget(
      {this.image,
      this.name,
      this.position,
      this.ratingValue,
      this.noOfPeople});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailsScreen()));
//        Navigator.push(context,
//            new MaterialPageRoute(builder: (context) => new DetailsScreen()));
      },
      child: Container(
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            //TODO theme

            alignment: Alignment.centerRight,
            child: new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Container(
                            child: Text(
                              "قام بالرد على إستشاره لك",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorLight),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          new Container(
                            child: new Text(
                              name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  //THEME dark
//                                  color: Colors.black87
                                  color: Theme.of(context).primaryColor),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                         margin:EdgeInsets.only(left:10.0),
                         child:CircleAvatar(
                           backgroundImage: image,
                           radius: 23,
                         ),
                      )

//
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
