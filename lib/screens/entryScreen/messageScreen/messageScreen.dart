import 'package:flutter/material.dart';
import 'package:avocato/screens/entryScreen/messageScreen/messageScreen_Widget.dart';
import '../../../Const.dart';

class MessageScreen extends StatefulWidget{
  @override
  _MessageScreenState createState() => new _MessageScreenState();
}


class _MessageScreenState extends State<MessageScreen>{
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor: Constants.dark_background ,
      body: MessageScreenWidget()
    ) ;
  }
}