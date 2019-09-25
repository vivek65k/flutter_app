import 'package:flutter/material.dart';

//Route Pages
import 'home/home.dart';
//import './pages/page2.dart';
//import 'tabs.dart';
//import '../pages/home/tab1.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String, WidgetBuilder>{
//        "/page2": (BuildContext context) => new Page2(),
        "/home": (BuildContext context) => new HomePage(),
//        "/detail": (BuildContext context) => new SideTabs(),
      },
      initialRoute: "/home",
      title: 'Flutter Nav',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}
