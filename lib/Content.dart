import 'package:flutter/material.dart';
 import 'package:converter/AboutUs.dart';
 import 'package:converter/Trainer.dart';
 class Content extends StatefulWidget{
  @override
  State createState()=>new ContentState();
}
  class ContentState extends State<Content>{
    TextEditingController heightController=TextEditingController();
    TextEditingController weightController=TextEditingController();
    var printresult='';
  @override
  Widget build(BuildContext context){
     return new Scaffold(
       appBar: new AppBar(
         title: Text('BMI_Finder'),
       ),
           body:Padding(
             padding: EdgeInsets.only(bottom: 20,top: 150,right: 20,left: 20),
             child: ListView(
               children: <Widget>[
                      new TextField(
                      controller:heightController,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      onChanged: (value){
                        debugPrint("This is and deploy");
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter Height',
                        hintText: 'Input height in Meter',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0),),
                    new TextField(
                        controller: weightController,
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      onChanged: (value){
                        debugPrint("This is and deploy");
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter Weight',
                        hintText: 'Input weight in kilogram',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal:true),
                    ),
             Padding(
               padding: EdgeInsets.only(top: 20,left: 5),
               child: new Row(
                 children: <Widget>[
                  
                     new RaisedButton(
                     shape:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                     color: Colors.teal,
                     child: new Text('Convert'),
                     highlightColor: Colors.black,
                     splashColor: Colors.blue,
                     textColor: Colors.white,
                     padding: EdgeInsets.all(15),
                     onPressed: (){
                      bmi(context);
                     }
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 120),
                   ),
                    new RaisedButton(
                     shape:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                     color: Colors.teal,
                     child: new Text('About BMI'),
                     highlightColor: Colors.black,
                     splashColor: Colors.blue,
                     textColor: Colors.white,
                     padding: EdgeInsets.all(15),
                     onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context){
                         return AboutUs();
                       }));
                     },
                   ),
                     
                 ],
               ),
             ),
               ],
             ),
           )
           
            
    
        
     );
     
  }
 void bmi(BuildContext context){
    double height=double.parse(heightController.text);
    double weight=double.parse(weightController.text);
    double bmii=weight/(height*height);
    String result='';
    var a;
    if(bmii<18.5){
      result='Your BMI is : $bmii\n You are Under_weighted';
    }
    else if(bmii==18.5||bmii<=24.9){
        result='Your BMI is : $bmii\n You are Normal_weighted';
    }
    else if(bmii==25||bmii<=29.9){
        result='Your BMI is : $bmii\n You are over_weighted';
    }
    else{
       result='Your BMI is : $bmii\n Obesity';
    }
    printresult=result;
    var alertDailog=AlertDialog(
      content:Text(printresult),
      title:Text('Calculated'),
      elevation: 20.0,
      actions: <Widget>[
        
        new RaisedButton(
          color: Colors.teal,
          textColor: Colors.white,
          child: new Text('Trainer'),
          onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context){
                         return Abc();
                       }));
          },
        ),
        new RaisedButton(
          color: Colors.teal,
          textColor: Colors.white,
          child: new Text('Doctor'),
          onPressed: (){},
        ),
        
        
         new RaisedButton(
          color: Colors.teal,
          textColor: Colors.white,
          child: new Text('Cancel'),
          onPressed: (){},
        ),
        
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDailog;
      }
    );
  }
  }