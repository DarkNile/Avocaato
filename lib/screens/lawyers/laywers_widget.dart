import 'package:flutter/material.dart';

class LaywerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      child:  laywerCardView()
    );
    
  }
  Widget laywerCardView(){
  return new Card(
        child: new Column(
          children: <Widget>[   
                new Container(
                  margin: EdgeInsets.all(10.0),
                  width: 75.0,
                  height: 75.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: new ExactAssetImage("assets/images/law.jpg")
                    )
                  ),   
            ),
             Column(   
                  children: <Widget>[
                    new Text("محمد عبد الله" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0),),
                    new Text("data")
                  ],
                ),
                Text("data")       
            ],

        ),
  );
}

}

