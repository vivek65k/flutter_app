import 'package:flutter/material.dart';
//page
import './about.dart';
 void main(){
   runApp(new MyApp());
 }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CBPRo"),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Vivek Pandey"),
                accountEmail: new Text("vivek65k@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: new Text('About Page'),
              onTap: (){
                Navigator.push(context,
                new MaterialPageRoute(builder: (BuildContext)=>new AboutPage()) );
              },
            )
          ],
        ),
      ),
    );
  }
}

