import 'package:flutter/material.dart';
import 'package:avocato/screens/entryScreen/messageScreen/messageCardWidget.dart';
import '../../../Const.dart';

class MessageScreenWidget extends StatefulWidget {
  @override
  _MessageScreenWidgetState createState() => _MessageScreenWidgetState();
}

class _MessageScreenWidgetState extends State<MessageScreenWidget> {
  @override
  Widget build(BuildContext context) {
     return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: <Widget>[
                             MessageCardView(image: AssetImage("assets/images/pro.png"),read: true, isOnline:true,name:"احمد عبد المجيد حسين",message: "ان شاء الله المشكله بتاعتك هتتحل متقلقش ",),
                            MessageCardView(image: AssetImage("assets/images/profile.jpg"),isOnline:true,name:"ميجو السيد حسن", message: "لا خلاص هبقى عندك بكره الساعه 6 و نص و المواعيد بتاعتى مظبوطه", ),
                            MessageCardView(image: AssetImage("assets/images/pro.png"),read: true, isOnline:false,name:"عبد الرحمن صلاح",message: " المشكله بتاعتك هتتحل متقلقش "),
                            MessageCardView(image: AssetImage("assets/images/pro.png"),read: true,name:"احمد السيد",isOnline:true,message: "ان شاء الله المشكله بتاعتك هتتحل متقلقش "),
                            MessageCardView(image: AssetImage("assets/images/pro.png"),isOnline:true,name:"احمد عبد المجيد حسين",message: "ان شاء الله المشكله "),
                            MessageCardView(image: AssetImage("assets/images/pro.png"),isOnline:true,name:"صلاح زكريا",message: "مفيش فلفان شاء الله المشكله بتاعتك هتتحل متقلقش " ),
                            MessageCardView(image: AssetImage("assets/images/pro.png"),isOnline:false,name:"محمد حسن",message: "ان شاء الله المشكله بتاعتك هتتحل متقلقش " ),
                            MessageCardView(image: AssetImage("assets/images/pro.png"),isOnline:true,name:"ابو سيد صلاح",message: "ان شاء الله المشكله بتاعتك هتتحل متقلقش "),
                            MessageCardView(image: AssetImage("assets/images/pro.png"),isOnline:true, name:"احمد عبد المجيد حسين",message: "ان شاء الله المشكله بتاعتك هتتحل متقلقش "),
                
      ],
     );
  }
}
