import'package:flutter/material.dart';
import 'package:converter/Content.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Content(),
         theme: new ThemeData(
          primaryColor: Colors.black,
        ),
    );
  }
}

