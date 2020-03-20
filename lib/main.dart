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
            color: Colors.blue,
            child: Container(
            width: double.infinity,//100,
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
