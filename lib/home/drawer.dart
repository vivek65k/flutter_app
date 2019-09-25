import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  _gotoPage(String route, BuildContext context) {
    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.home),
            title: new Text('Home'),
            onTap: () {
              // change app state...
              _gotoPage("/home", context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.info),
            title: new Text('Page 2'),
            onTap: () {
              // change app state...
              _gotoPage("/page2", context);
            },
          ),
        ],
      ),
    );
  }
}