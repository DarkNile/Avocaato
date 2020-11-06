import 'package:flutter/material.dart';

import './chatClient_card.dart';
import './chatLaywer_card.dart';
import 'inputSegment.dart';
import '../../Const.dart';

class chatScreenWidget extends StatefulWidget {
  @override
  _chatScreenWidgetState createState() => _chatScreenWidgetState();
}

class _chatScreenWidgetState extends State<chatScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 515,
          child: Container(
//          height: MediaQuery.of(context).size.height / 1.2 ,
//          width: MediaQuery.of(context).size.width,
//            color: Colors.grey[100],
          color: Constants.dark_background,
            child: ListView(children: <Widget>[
              chatClientCart(
                message: "السلام عليكم و رحمه الله وبركاته",
              ),
              chatLaywerCard(
                message: "و عليك السلام ",
              ),
              chatClientCart(message: "لو سمحت كان عندى استفسار !!"),
              chatLaywerCard(message: "اتفضل"),
              chatClientCart(
                  message:
                      "عندى صاحب الشقه عايز يخرجنى من الشقه مع انى معايا عقد ايجار"),
              chatLaywerCard(message: "طيب رحتى لمحامى"),
              chatClientCart(message: "منا عايزه حضرتك ترفعلى القضيه"),
              chatLaywerCard(
                  message: "خلاص ماشى هاتى نمرتك و انا هتواصل مع حضرتك"),
              chatClientCart(message: "رقمى 01155901863"),
              chatLaywerCard(message: "ممكن اعرف اتعاب حضرتك كام"),
              chatClientCart(message: "الجلسه الواحده باخد فيها 500 جنيه"),
              chatLaywerCard(message: "خلاص اتفقنا منتظره مكلمه حضرتك"),
              chatClientCart(
                  message:
                      "تمام ان شاء الله على بليل هتصل بيكى اعرف منك التفاصيل"),
              chatLaywerCard(message: "شكراا جداا لحضرتك"),
              chatClientCart(message: "العفو")
            ]),
          ),
        ),
        Divider(
          height: 5.00,
        ),
        inputSegment()
      ],
    );
  }
}
