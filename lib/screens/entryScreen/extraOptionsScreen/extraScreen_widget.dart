import 'package:flutter/material.dart';
import 'extraCardWidget.dart';
import '../notificationScreen/notificationScreen.dart';
import 'settingScreen/settingScreen.dart';

class ExtraScreenWidget extends StatefulWidget {
  @override
  _ExtraScreenWidgetState createState() => _ExtraScreenWidgetState();
}

class _ExtraScreenWidgetState extends State<ExtraScreenWidget> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        extraCardWidget(cardIcon: Icon(Icons.settings),title: "الإعدادات",pageTransferName: new settingScreen(),),
        extraCardWidget(cardIcon: Icon(Icons.system_update_alt),title: "تسجيل الخروج",pageTransferName: new NotificationScreen(),),

      ],
    );
  }
}
