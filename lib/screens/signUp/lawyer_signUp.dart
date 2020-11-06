import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tags/tag.dart';

class LawyerSignUp extends StatefulWidget {
  @override
  _LawyerSignUpState createState() => _LawyerSignUpState();
}

class _LawyerSignUpState extends State<LawyerSignUp> {
  String dropDownValue = "جنائى";
  List<String> specialities = <String>['جنائى' , 'ابتدائى' , 'الجنح' , 'النقض', 'الأسره'];
  List<String> addedSkills = <String>[];
onChangeDropdownItem(String value){
  setState(() {
       
     dropDownValue = value; 
      addedSkills.add(value);
  });
}

  List<DropdownMenuItem<String>> buildDropdownMenuItems(List specialities){
  
   List<DropdownMenuItem<String>> items = List();
    for(String str in specialities){
       items.add(
         DropdownMenuItem(
           value: str,
           child: Text(str),
         )
       );
    }
    return items;

  }

  

  @override
  Widget build(BuildContext context) {
 
        return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top:30.0),
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
                              hintText: 'عنوان العمل',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(
                                Icons.location_on
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
    
                 Row(     
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[   
                        Container(
                            margin: EdgeInsets.only(top:30.0, left: 40.0 , right: 10.0),
                              alignment: Alignment.bottomRight,
                              child:  DropdownButton(
                              value: dropDownValue,
                              items: buildDropdownMenuItems(specialities),
                              onChanged: onChangeDropdownItem,
                          ), 
                        ),

                        Container(
                            margin: EdgeInsets.only( top: 30.0, right: 40.0),
                              child:Text("إختر التخصص", style:TextStyle(fontSize: 15.0 , fontWeight:FontWeight.bold , color:Colors.blueGrey)),
                            )
                         
                       ],),

                      Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 30.0 , left: 25.0),
                        height:60.0,
                         child: ListView(
                           reverse: true,
                            scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                  Tags(       
                                    itemCount: addedSkills.length, 
                                    itemBuilder: (int index){          
                                          final item = addedSkills[index];   
                                          return ItemTags(
                                              removeButton: ItemTagsRemoveButton(),
                                              key: Key(index.toString()),
                                              index: index, 
                                              title: addedSkills.elementAt(index),
                                              textStyle: TextStyle( fontSize: 15.0, ),              
                                              onRemoved: (){
                                                 setState(() {
                                                   addedSkills.removeAt(index); 
                                                });
                                              },
                                              onPressed: (item) => print(item),
                                              onLongPressed: (item) => print(item),
                                          );
                                    },
                                  )  
                              ],
                          ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                          margin: const EdgeInsets.only(bottom: 20.0),
                          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                          child: new Row(
                            children: <Widget>[
                              new Expanded(
                                child: FlatButton(
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
                              ),
                            ],
                          ),
          ),
         

       ],
     ),),
    );
  }
}

