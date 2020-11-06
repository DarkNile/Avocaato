import 'package:flutter/material.dart';

class VisitorSignUp extends StatefulWidget {
  @override
  _VisitorSignUpState createState() => _VisitorSignUpState();
}

class _VisitorSignUpState extends State<VisitorSignUp> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top:80.0),
          child: ListView(
             
               children: <Widget>[

                            Container(
                            margin: EdgeInsets.only( right: 40.0 , left: 40.0),
                            child: TextField(  
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  hintText: 'الأسم بالكامل',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  suffixIcon  : Icon(
                                 Icons.person_outline,
                                color: Colors.grey,
                              ),
                                ),
                              ),
                          ),
 
    
                     new Container(
                         margin: EdgeInsets.only(top:10.0 , right: 40.0 , left: 40.0),
                        child: TextField(  
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintText: 'البريد الإلكترونى',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon:Icon(
                                Icons.alternate_email ,
                                
                              )
                            ),
                          ),
                  ),
          
                new Container(
                       margin: EdgeInsets.only(top:10.0 , right: 40.0 , left: 40.0),
                        child: TextField(  
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintText: 'الرقم السرى',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(
                                Icons.lock_open
                              )
                            ),
                          ),
                   ),

                     new Container(
                        margin: EdgeInsets.only(top:10.0 , right: 40.0 , left: 40.0),
                        child: TextField(  
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintText: 'إعاده إدخال الرقم السرى',
                              hintStyle: TextStyle(color: Colors.grey),
                               suffixIcon: Icon(
                                Icons.lock_open
                              )
                            ),
                          ),
                   ),

                    Container(
                        alignment: Alignment.centerRight,
                          margin: const EdgeInsets.only(bottom: 20.0),
                          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                          child: new Row(
                            children: <Widget>[
                              new Expanded(
                                child:Container(
                                  margin:EdgeInsets.only(top:15.0),
                                  child :FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0)),
                                  splashColor: Colors.red,
                                  color: Colors.red,
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[    
                                      new Container( 
                             
                                        padding: EdgeInsets.only(top: 5.0 , bottom: 5.0),      
                                        child: Text(
                                          "تسجيل حساب",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white , fontSize: 15.0 , fontWeight: FontWeight.bold ),
                                        ),
                                      ),
                                
                                    ],
                                  ),
                                  onPressed: () {/* Navigator.push(context,MaterialPageRoute(builder: (context) => new Specialities()),);*/},
                                ),
                                ) 
                              ),
                            ],
                          ),
          ),
       ],
     ),),
    );
  }
}