import 'package:avocato/screens/signUp/lawyer_signUp.dart';
import 'package:avocato/screens/signUp/visitor_signUp.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class VisitorDistinguish extends StatefulWidget {
  @override
  _VisitorDistinguishState createState() => _VisitorDistinguishState();
}

class _VisitorDistinguishState extends State<VisitorDistinguish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: new Center(
            child: Text("من انت ؟ ",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20.0, left: 20.0),
          child: FlatButton(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.redAccent,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "محامى",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: LawyerSignUp()));
            },
//                        Navigator.push(context, MaterialPageRoute(builder: (context) => new LawyerSignUp()))
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20.0, left: 20.0),
          child: FlatButton(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.redAccent,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "عميل",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: VisitorSignUp()));
//                  Navigator.push(context, MaterialPageRoute(
//                      builder: (context) => new VisitorSignUp()),)
            },
          ),
        )
      ],
    ));
  }
}
