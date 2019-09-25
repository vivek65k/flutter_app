import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';
    return MaterialApp(
      title:title,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CBPro"),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 12 widgets that display their index in the List.
          children: List.generate(12, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),

        ),
      ),
    );
  }
}