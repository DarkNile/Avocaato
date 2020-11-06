import 'package:avocato/screens/lawyers/card_widget.dart';
import 'package:flutter/material.dart';
import '../../Const.dart';

class Lawyers extends StatefulWidget {
  @override
  _LawyersState createState() => new _LawyersState();
}

class _LawyersState extends State<Lawyers> {
  String dropDownValue = "جنائى";
  String dropDownGovernment = "القاهره";
  List<String> specialities = <String>['جنائى', 'الجنح', 'النقض', 'الأسره'];
  List<String> governments = <String>[
    'القاهره',
    'الجيزى',
    'المنيا',
    'السويس',
    'الأقصر',
    'الأسكندريه',
    'بورسعيد',
    'دمياط',
    'اسوان',
    'بنى سويف',
    'الإسماعيليه',
    'سوهاج',
    'أسيوط',
    'البحر الأحمر',
    'البجيره',
    'الدقهليه',
    'الغربيه',
    'الفيوم',
    'قنا',
    ' كفر الشيخ',
    'مطروح',
    'المنوفيه',
    'الوادى الجديد',
    'السادس من اكتوبر',
    'شمال سيناء',
    'جنوب سيناء',
    'حلوان',
    'الشرقيه'
  ];

  List<String> addedSkills = <String>[];

  onChangeDropdownItem(String value) {
    setState(() {
      dropDownValue = value;
      addedSkills.add(value);
    });
  }

  onChangeGovernmentDropDown(String value) {
    setState(() {
      dropDownGovernment = value;
    });
  }

  List<DropdownMenuItem<String>> buildDropdownMenuItems(List specialities) {
    List<DropdownMenuItem<String>> items = List();
    for (String str in specialities) {
      items.add(DropdownMenuItem(
          value: str,
          child: SizedBox(
            width: 50.0,
            child: Text(
              str,
              style: TextStyle(color: Theme.of(context).primaryColorLight),
              textAlign: TextAlign.right,
            ),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> buildGovernmentDropDownItems(
      List governments) {
    List<DropdownMenuItem<String>> items = List();
    for (String str in governments) {
      items.add(DropdownMenuItem(
          value: str,
          child: SizedBox(
            width: 75,
            child: Text(
              str,
              style: TextStyle(color: Theme.of(context).primaryColorLight),
              textAlign: TextAlign.right,
            ),
          )));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.dark_background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: new Container(),
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              SingleChildScrollView(
//                scrollDirection: Axis.horizontal,
                child: new Container(

//                     margin: EdgeInsets.all(2.0),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(25.0),
//                        ),
//                      elevation: 2.0,
                    child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 250.0,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          new Expanded(
                            child: Container(
                              padding: EdgeInsets.only(right: 20.0),
                              child: TextField(
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'إبحث بأسم المحامى',
                                  hintStyle: TextStyle(
                                      color: Theme.of(context).primaryColorDark
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                    new Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          //alignment: Alignment.bottomRight,
                          child: DropdownButton(
                            value: dropDownGovernment,
                            items: buildGovernmentDropDownItems(governments),
                            onChanged: onChangeGovernmentDropDown,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0, top: 5.0),
                          child: Text("المحافظه",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor
//                                  color: Colors.blueGrey
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          alignment: Alignment.bottomRight,
                          child: DropdownButton(
                            value: dropDownValue,
                            items: buildDropdownMenuItems(specialities),
                            onChanged: onChangeDropdownItem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0, top: 5.0),
                          child: Text(" التخصص",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
//                                  color: Colors.blueGrey
                              color: Theme.of(context).primaryColor
                              )),
                        ),
                      ],
                    ),
                    Container(
                      width: 120.0,
                      margin: EdgeInsets.only(bottom: 8.0, top: 5.0),
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.green,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: Text(
                            "بحث",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "احمد عبد المجيد حسين",
                      position: "محامى بالنقض الدولى",
                      ratingValue: 4.5,
                      noOfPeople: 10,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/profile.jpg"),
                      name: "ميجو السيد حسن",
                      position: "محامى بالنقض الدولى",
                      ratingValue: 5,
                      noOfPeople: 98,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "عبد الرحمن صلاح",
                      position: "محامى بالنقض الدولى",
                      ratingValue: 2.5,
                      noOfPeople: 250,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "احمد السيد",
                      position: "محامى بالنقض الدولى",
                      ratingValue: 3,
                      noOfPeople: 65,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "احمد عبد المجيد حسين",
                      position: "محامى بالنقض الدولى",
                      ratingValue: 3.5,
                      noOfPeople: 25,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "صلاح زكريا",
                      position: "محامى بالنقض الدولى",
                      ratingValue: 2.5,
                      noOfPeople: 100,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "محمد حسن",
                      position: " ى",
                      ratingValue: 2,
                      noOfPeople: 60,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "ابو سيد صلاح",
                      position: "محامى الدولى",
                      ratingValue: 2,
                      noOfPeople: 25,
                    ),
                    CardWidget(
                      image: AssetImage("assets/images/pro.png"),
                      name: "احمد عبد المجيد حسين",
                      position: "محامى بالنقض الدولى",
                      ratingValue: 2.5,
                      noOfPeople: 98,
                    ),
                  ],
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
