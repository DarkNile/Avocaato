import 'package:avocato/Const.dart';
import 'package:flutter/material.dart';

class complainNavigatoin extends StatefulWidget {
  @override
  _complainNavigatoinState createState() => _complainNavigatoinState();
}

class _complainNavigatoinState extends State<complainNavigatoin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.0, left: 5.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              "الإستشاره",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
//                color: Colors.black,
              color:Colors.green
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
          Divider(
            indent: 10.0,
            endIndent: 10.0,
            color: Theme.of(context).primaryColorDark,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.only(top: 10.0, bottom: 0.0, right: 10.0),
            alignment: Alignment.centerRight,
            child: Text(
              "جارتى عايزه تاحد منى الشقه عافيه",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
//                  color: Colors.blue
              color:Theme.of(context).primaryColor
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
          Divider(
            indent: 10.0,
            endIndent: 10.0,
            color: Theme.of(context).primaryColorDark,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.centerRight,
            child: Text(
              "عندى جارتى ساكنه فى الدور الرابع و عايزه تاخد منى الشقه بالعافيه اتصلت بالبوليس بس محدش عايز ينقذنى اعمل ايه حضرتك انا تعبت من الموضوع ده خلاص انا قرفت و قربت  انتخر عايزه حل بسرعه عشان انا محناجه شقنى و ليا فيها كريات كتير شكراا جدااا ارجوا الرد فى اسرع وقت و السلام عليكم و رحمه الله و بركاته و شكراا جدااا مع تمنياتى لكم بالنجاح و التوفيه و السلام عليكم و رحمه الله  و بركاته و شكراا احداا",
              style: TextStyle(fontSize: 16.0,color:Theme.of(context).primaryColorLight),
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}
