import 'package:flutter/material.dart';
import 'package:avocato/screens/profile/profile_widget.dart';
import 'package:avocato/screens/entryScreen/entryScreen_widget.dart';

class EntryScreen extends StatefulWidget{
  @override
  _EntryScreenState createState() => new _EntryScreenState();
  
}

class _EntryScreenState extends State<EntryScreen>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(0.0),
         child: new Container(),
       ),    
        body:new EntryScreenWidget()
     );
  }

}