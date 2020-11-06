import 'package:flutter/material.dart';
import 'package:avocato/screens/entryScreen/notificationScreen/notificationScreen_widget.dart';
import '../../../Const.dart';



class NotificationScreen extends StatefulWidget{
  @override
  _NotificationScreenState createState() => new _NotificationScreenState();
}


class _NotificationScreenState extends State<NotificationScreen>{
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
              
        ),
      ),
      body: new  NotificationScreenWidget(),
      backgroundColor: Constants.dark_background,
    ) ;
  }
}