import 'package:flutter/material.dart';

void main()=>runApp(AboutUs());

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(title:Text('About_BMI'),),
        body: Padding(padding: EdgeInsets.all(20),
          child: Container(
            child: new Column(
              children: <Widget>[
                
                new Text('BMI Stands for body mass Index',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                )),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                new Text('It is used to find whether a person is underfaded, over faded or Noraml',
                style: TextStyle(
                  color: Colors.black,
                ),),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}