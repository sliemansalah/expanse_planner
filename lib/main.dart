import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: 
            Container(
              width: double.infinity, //100
              color: Colors.blue,
             child: Text('Chart')),
            elevation: 5,
          ),
          Card(
            child: Text('List of TX'),
          )
        ],
      ),
    ));
  }
}
