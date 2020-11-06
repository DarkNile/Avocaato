import 'package:flutter/material.dart';
import '../../Const.dart';
import './chatScreen_widget.dart';

class chatScreen extends StatefulWidget {
  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  Theme.of(context).accentColor,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
            ),
            onPressed: ()=>Navigator.pop(context),
          ),
          titleSpacing: 0,
          title: InkWell(
            child: Row(

              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0.0, right: 10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/profile.jpg",
                    ),
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Text(
                        'mego',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Online",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            onTap: (){},
          ),
        ),

        resizeToAvoidBottomPadding: true,
        backgroundColor:  Theme.of(context).accentColor,
        body: chatScreenWidget());
  }
}
