import 'package:flutter/material.dart';

import '../../../../../Const.dart';

class ReplayCard extends StatefulWidget {
  @override
  _ReplayCardState createState() => _ReplayCardState();
}

class _ReplayCardState extends State<ReplayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(right: 10.0,top: 10.0),
                      child: new Text(
                        "محمد f المطلب",
                        style: TextStyle(
                            fontSize: 15.0,
//                            color: Colors.blue,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl,
                      ),
                    ),

                    //TODO TRY TO MAKE THE CONTAINER TO HAVE DYNAMIC SIZE WIDTH..
                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                              margin: EdgeInsets.only(bottom:15.0),
                              //TODO when the user click in this icon it should be Icon(Icons.favourite , color:Colors.red)
                              child: Icon(
                                Icons.favorite_border,
                                color: Theme.of(context).primaryColorDark,
                                size: 25.0,
                              )),
                          onTap: () {},
                        ),

                        new Container(
                          margin: EdgeInsets.only(right: 10.0),
                          width: 220.0,
                          child: new Text(
                              "المشكله بسيطه حضرتك روح لمحامى و هوا هيعمل استئناف و المحكمه هتحكم ليكم متقبقش",
                              maxLines: 13,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 13.0,
//                              color: Colors.black
                                  color: Theme.of(context).primaryColorLight),
                              textDirection: TextDirection.rtl),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                new Container(

                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/pro.png")),
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  ),
                ),
SizedBox(width: 50.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
