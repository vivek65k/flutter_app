import 'package:flutter/material.dart';

//Drawer Widget
import 'drawer.dart';

//Tabs Content
import 'dashboard.dart';
//import '../pages/home/tab2.dart';
//import '../pages/home/tab3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: new MyDrawer(),

          appBar: AppBar(
            title: Text("CBPro"),
            bottom: TabBar(
              tabs: [
                Tab(text:"Menu"),
                Tab(text:"Dashboard"),
//
              ],
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
                new Dashboard(),
                new Dashboard(),
//              new HomeTab3(),
            ],
          )),
    );
  }
}