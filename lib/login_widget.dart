import 'package:avocato/screens/entryScreen/entryScreen.dart';
import 'package:avocato/screens/signUp/visitorDistinguish.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen1 extends StatelessWidget {
  final Color primaryColor;
  final Color backgroundColor;
  final AssetImage backgroundImage;
  final Color logoColor;

  LoginScreen1(
      {this.primaryColor,
      this.backgroundColor,
      this.backgroundImage,
      this.logoColor});

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new ClipPath(
              child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 80.0,
                      width: 80.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              image: new AssetImage("assets/images/bal.jpg"))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Avvo",
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Text(
                          "cato",
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "' نخبه من افضل المحامين على مستوى الجمهوريه '",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
//                            color: Colors.black
                            color: Theme.of(context).primaryColor),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                new Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                  margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                ),
                new Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'إدخل البريد الألكترونى',
//                        hintStyle: TextStyle(color: Colors.grey),
                        hintStyle: TextStyle(
                            color: Theme.of(context).primaryColorDark),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                new Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  child: Icon(
                    Icons.lock_open,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 10.0,
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                  margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                ),
                new Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 8.0),
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'إدخل الرقم السرى',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 10.0, left: 15.0, top: 20.0),
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0)),
                    color: Colors.red[400],
                    child: new Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
//                          color: Colors.white
                          color: Theme.of(context).primaryColorLight),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 15.0, top: 25),
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    child: new Text("الدخول",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
//                            color: Colors.white
                            color: Theme.of(context).primaryColorLight)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: EntryScreen()));
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => new EntryScreen()));
                    },
                  ),
                ),
              )
            ],
          ),

          ////////
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Text(
              "سجل عن طريق",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                  color: Theme.of(context).primaryColorDark),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                width: 30,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        image: new AssetImage("assets/images/facebook.png"))),
              ),
              SizedBox(width: 10.0),
              Container(
                height: 30,
                width: 30,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        image: new AssetImage("assets/images/search.png"))),
              )
            ],
          ),
          Container(
//            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.transparent,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 35.0, top: 25),
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "ليس لديك حساب ؟ إضعط لإنشاء حساب جديد",
                          style: TextStyle(
//                            color: Colors.lightBlue,
                              color: Theme.of(context).primaryColorLight,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        ),
                      ),
                      onPressed: () => {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: VisitorDistinguish()))
                          }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
