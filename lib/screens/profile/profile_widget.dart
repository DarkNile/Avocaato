import 'package:avocato/screens/profile/communicate_widget.dart';
import 'package:avocato/screens/profile/mainInfo-widget.dart';
import 'package:avocato/screens/profile/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../Const.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTabSelection());
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _currentIndex = _tabController.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      new Container(
        height: 15.0,
//              color: Colors.grey[300],
        color: Constants.dark_background,
      ),
      Container(
        height: 140.0,
//                color: Colors.grey[300],

        color: Constants.dark_background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  alignment: Alignment.center,
                  height: 80.0,
                  width: 80.0,
                  decoration: new BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new ExactAssetImage(
                              "assets/images/profile.jpg"))),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("أحمد عبد المجيد حسين",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold)),
                Text("محامى بالنقض",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
//                                color: Colors.black38
                        color: Theme.of(context).primaryColorLight))
              ],
            ),
          ],
        ),
      ),

      new Container(
//               color: Colors.grey[300],
        color: Constants.dark_background,
        child: new CommunicateWidget(),
      ),

      new TabBar(
        labelColor: Colors.black54,
        controller: _tabController,
        tabs: [
          new Tab(
              child: new Text(
            "التقيمات",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          )),
          new Tab(
            child: new Text("معلومات رئيسيه",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),

      //TODO fix the widget to be flexable size..
      new Container(
        height: MediaQuery.of(context).size.height - 320,
        child: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new ListView(
              children: <Widget>[
                new ListTile(
                    title: PreferredSize(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      reviewWidget(
                          name: "احمد عبد الرحمن",
                          review: "محامى كويس جداا",
                          image: AssetImage("assets/images/pro.png"),
                          ratingValue: 3),
                      Divider(
                        indent: 25,
                        color: Theme.of(context).primaryColorDark,
                        endIndent: 25,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      reviewWidget(
                          name: "احمد محمد",
                          review: "محامى كويس  و سعره حلو",
                          image: AssetImage("assets/images/pro.png"),
                          ratingValue: 4.5),
                      Divider(
                        indent: 25,
                        color: Theme.of(context).primaryColorDark,
                        endIndent: 25,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      reviewWidget(
                          name: "سليم صالح",
                          review:
                              "بجد ممتاز و التعامل معاه كويس و سعره حلو جداا اتمنى لك التوفيق",
                          image: AssetImage("assets/images/profile.jpg"),
                          ratingValue: 4),
                      Divider(
                        indent: 25,
                        color: Theme.of(context).primaryColorDark,
                        endIndent: 25,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      reviewWidget(
                          name: "احمد عبد الرحمن",
                          review: "محامى كويس جداا",
                          image: AssetImage("assets/images/pro.png"),
                          ratingValue: 5),
                      Divider(
                        indent: 15,
                        color: Theme.of(context).primaryColorDark,
                        endIndent: 15,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      reviewWidget(
                          name: "ميجو عبد الرحمن",
                          review: "محامى كويس جداا",
                          image: AssetImage("assets/images/pro.png"),
                          ratingValue: 3.5),

                      Divider(
                        indent: 15,
                        color: Theme.of(context).primaryColorDark,
                        endIndent: 15,
                      ),

                      SizedBox(
                        height: 5.0,
                      ),
                      reviewWidget(
                          name: "احمد محمد",
                          review: "محامى كويس  و سعره حلو",
                          image: AssetImage("assets/images/pro.png"),
                          ratingValue: 4.5),
                      SizedBox(
                        height: 5.0,
                      ),
                      Divider(
                        indent: 15,
                        color: Theme.of(context).primaryColorDark,
                        endIndent: 15,
                      ),
                      reviewWidget(
                          name: "سليم صالح",
                          review:
                              "بجد ممتاز و التعامل معاه كويس و سعره حلو جداا اتمنى لك التوفيق",
                          image: AssetImage("assets/images/profile.jpg"),
                          ratingValue: 4),
                      // SizedBox(height: 5.0,),

                      Divider(
                        indent: 15,
                        color: Theme.of(context).primaryColorDark,
                        endIndent: 15,
                      ),
                      reviewWidget(
                          name: "احمد عبد الرحمن",
                          review: "محامى كويس جداا",
                          image: AssetImage("assets/images/pro.png"),
                          ratingValue: 5),
                    ],
                  ),
                  preferredSize: Size.fromHeight(300.0),
                )),
              ],
            ),
           new MainInfo(
                telNo: "0114-490-18563",
                worktelNo: "27642443",
                address: "شارع رايل تقاطع شارع محمد على حلوان - القاهره",
                about: "محامى نقط لديه 15 سنه خبره فى محا")
          ],
        ),
      ),
    ]);
  }
}
