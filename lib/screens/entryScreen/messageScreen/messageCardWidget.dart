import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Const.dart';
import '../../chat/chatScreen.dart';
class MessageCardView extends StatefulWidget {
  AssetImage image;
  String message, name;
  bool read = false;
  bool isOnline = false;
  int counter = 5;

  MessageCardView(
      {this.image,
        this.name,
        this.read,
        this.message,
        this.isOnline,
        this.counter});

  @override
  _MessageCardViewState createState() => _MessageCardViewState();
}

class _MessageCardViewState extends State<MessageCardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        trailing: Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: widget.image,
              radius: 25,
            ),
            Positioned(
              bottom: 0.0,
              left: 7.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 11,
                width: 11,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.isOnline ? Colors.greenAccent : Colors.grey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    height: 7,
                    width: 7,
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          "${widget.name}",
          textAlign:TextAlign.right,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.0
          ),
        ),
        subtitle: Text("${widget.message}",textAlign: TextAlign.right,style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 12),),
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              '56:23',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 11,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            SizedBox(height: 5),
            widget.counter == 0
                ? SizedBox()
                : Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: BoxConstraints(
                minWidth: 11,
                minHeight: 11,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 1, left: 5, right: 5),
                child: Text(
                  "5",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        onTap: () {

          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: chatScreen()));
//          Navigator.push(context,
//              new MaterialPageRoute(builder: (context) => new chatScreen()));
        },
      ),
    );
  }
}
