import 'package:avocato/screens/complains/complainDetails/complainNavigations/comments/replayCard.dart';
import 'package:flutter/material.dart';

import '../../../../../Const.dart';

class commentCard extends StatefulWidget {
  @override
  _commentCardState createState() => _commentCardState();
}

class _commentCardState extends State<commentCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  //name of the user..
                  new Container(
                    alignment: Alignment.centerRight,
                    child: new Text(
                      "محمد عبد المطلب",
                      style: TextStyle(
                          fontSize: 17.0,
//                                    color: Colors.blue,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  //comment..
                  new Container(
                    width: 220.0,
                    child: new Text(
                        "المشكله بسيطه حضرتك روح لمحامى و هوا هيعمل استئناف و المحكمه هتحكم ليكم متقبقش",
                        maxLines: 13,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14.0,
//                                      color: Colors.black
                            color: Theme.of(context).primaryColorLight),
                        textDirection: TextDirection.rtl),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        child: Container(

                            //TODO Don't forget to fix this issue elmargin mboza elsora

                            //TODO when the user click in this icon it should be Icon(Icons.favourite , color:Colors.red)
                            child: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).primaryColorDark,
                          size: 25.0,
                        )),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.only(top: 5.0),
                            //default chat_bubble
                            child: Icon(
                              Icons.chat_bubble_outline,
                              color: Theme.of(context).primaryColorDark,
                              size: 23.0,
                            )),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
              //image of the user.
              new Container(
                margin: EdgeInsets.all(15.0),
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/pro.png")),
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                ),
              ),
            ],
          ),
          //Todo list of comments for the laywers
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ReplayCard(),
              ReplayCard(),
            ],
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
