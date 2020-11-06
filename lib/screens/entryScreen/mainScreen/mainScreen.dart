import 'package:avocato/Const.dart';
import 'package:avocato/screens/complains/complainScreen_widget.dart';
import 'package:avocato/screens/lawyers/laywers.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: (Constants.isLandScape(context))
            ? MediaQuery.of(context).size.width / 2 + 50
            : MediaQuery.of(context).size.height / 2 + 50,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: SizedBox(
                    height: Constants.isLandScape(context) ? MediaQuery.of(context).size.width /4:  MediaQuery.of(context).size.height /3,
                    width: MediaQuery.of(context).size.width,
                    child: Carousel(
                      autoplay: true,
                      animationCurve: Curves.decelerate,
                      images: [
                        AssetImage('assets/images/1.jpg'),
                        AssetImage('assets/images/2.jpg'),
                        AssetImage('assets/images/3.png'),
                        AssetImage('assets/images/2.jpg'),
                        AssetImage('assets/images/3.png'),
                        AssetImage('assets/images/2.jpg'),
                        AssetImage('assets/images/3.png'),
                        AssetImage('assets/images/2.jpg'),
                        AssetImage('assets/images/3.png'),
                      ],
                    ))),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 400.0,
                    margin: EdgeInsets.only(
                        top: Constants.isLandScape(context) ? 10.0 : 4,
                        right: 10.0,
                        left: 15.0,
                        bottom: 10.0),
                    child: new FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
//TODO THEME CHANGE
                      color: Theme.of(context).accentColor,
//                  color: Colors.blue,
                      child: new Container(
                        padding: EdgeInsets.all(15.0),
                        child: new Text(
                          " البحث عن محامى",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColorLight
//ToDO theme change
//                          color: Colors.white
                              ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: Lawyers()));
//
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => new Lawyers()));
                      },
                    ),
                  ),
                  Container(
                    width: 400.0,
                    margin: EdgeInsets.only(right: 10.0, left: 15.0),
                    child: new FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      //TODO THEME CHANGE
                      color: Theme.of(context).accentColor,
//                  color: Colors.blue,
                      child: new Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          " إستشاره قانونيه",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70
//                          color: Colors.white
                              ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: ComplainScreenDetails()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
