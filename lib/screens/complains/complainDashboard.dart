import 'package:flutter/material.dart';
import '../../Const.dart';

class complainDashboard extends StatefulWidget {
  @override
  _complainDashboardState createState() => _complainDashboardState();
}

class _complainDashboardState extends State<complainDashboard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: Card(
            elevation: 14.0,
            child: Container(
              height: 120.0,
              color: Colors.grey[400],
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Text(
                          Constants.convertToArabicNumbers("50"),
                          style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "لم يتم الأجابه",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            elevation: 14.0,
            child: Container(
              height: 120.0,
              margin: EdgeInsets.only(top: 1.0, right: 1.0, left: 1.0),
              color: Colors.red,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Text(
                          Constants.convertToArabicNumbers("60"),
                          style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "تمت الاجابه",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            elevation: 14.0,
            child: Container(
              height: 120.0,
              color: Colors.blue,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Text(
                          Constants.convertToArabicNumbers("110"),
                          style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "إستشاره",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
