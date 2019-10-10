import 'package:flutter/material.dart';

void main()=>runApp(Abc());

class Abc extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: new AppBar(title:Text('Help Desk'),),
        body: getListView(),
      ),
    );
    
}

}
Widget getListView(){
  var listView=ListView(
    children: <Widget>[
      
      ListTile(
        leading: Icon(Icons.account_circle),
        title:Text('Wajahat') ,
        subtitle: Text('Mr Muscle'),
        trailing:Icon(Icons.add_call),
        onTap: (){

        },
      ),
       ListTile(
        leading: Icon(Icons.account_circle),
        title:Text('Iqbal') ,
        subtitle: Text('The best Buddy'),
        trailing:Icon(Icons.add_call),
        onTap: (){
          
        },
      ),
       ListTile(
        leading: Icon(Icons.account_circle),
        title:Text('Ritu') ,
        subtitle: Text('Miss Metrics'),
        trailing:Icon(Icons.add_call),
        onTap: (){
          
        },
      ),
       ListTile(
        leading: Icon(Icons.account_circle),
        title:Text('Ajit') ,
        subtitle: Text('The Cheerleader'),
        trailing:Icon(Icons.add_call),
        onTap: (){
          
        },
      ),
       ListTile(
        leading: Icon(Icons.account_circle),
        title:Text('Manish') ,
        subtitle: Text('Cardio Queen'),
        trailing:Icon(Icons.add_call),
        onTap: (){
          
        },
      ),
       ListTile(
        leading: Icon(Icons.account_circle),
        title:Text('Bhanu') ,
        subtitle: Text('Specilist'),
        trailing:Icon(Icons.add_call),
        onTap: (){
          
        },
      ),
      new Padding(
        padding: EdgeInsets.only(top: 20),
      ),
      ],
  );
  return listView;
}