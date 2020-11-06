import 'package:flutter/material.dart';
import 'package:avocato/screens/entryScreen/notificationScreen/notificationCardWidget.dart';
import 'package:avocato/screens/lawyers/card_widget.dart';
import '../../../Const.dart';

class NotificationScreenWidget extends StatefulWidget {
  @override
  _NotificationScreenWidgetState createState() =>
      _NotificationScreenWidgetState();
}

class _NotificationScreenWidgetState extends State<NotificationScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: <Widget>[
        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "احمد عبد المجيد حسين",
          position: "محامى بالنقض الدولى",
          ratingValue: 4.5,
          noOfPeople: 10,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/profile.jpg"),
          name: "ميجو السيد حسن",
          position: "محامى بالنقض الدولى",
          ratingValue: 5,
          noOfPeople: 98,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "عبد الرحمن صلاح",
          position: "محامى بالنقض الدولى",
          ratingValue: 2.5,
          noOfPeople: 250,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "احمد السيد",
          position: "محامى بالنقض الدولى",
          ratingValue: 3,
          noOfPeople: 65,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "احمد عبد المجيد حسين",
          position: "محامى بالنقض الدولى",
          ratingValue: 3.5,
          noOfPeople: 25,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "صلاح زكريا",
          position: "محامى بالنقض الدولى",
          ratingValue: 2.5,
          noOfPeople: 100,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "محمد حسن",
          position: " ى",
          ratingValue: 2,
          noOfPeople: 60,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "ابو سيد صلاح",
          position: "محامى الدولى",
          ratingValue: 2,
          noOfPeople: 25,
        ),

        NotificationCardWidget(
          image: AssetImage("assets/images/pro.png"),
          name: "احمد عبد المجيد حسين",
          position: "محامى بالنقض الدولى",
          ratingValue: 2.5,
          noOfPeople: 98,
        ),
      ],
    );
  }
}
