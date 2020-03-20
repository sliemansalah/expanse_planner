import './transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  
  final List<Transaction> transactions = [
    Transaction(id:'t1',title:'New Shoes', amount: 69.69, date: DateTime.now(),),
        Transaction(id:'wed7',title:'Weekly dat', amount: 16.53, date: DateTime.now(),)

  ]; 

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Chart'),
              elevation: 5,
            ),
          ),
          Card(
            color: Colors.red,
            child: Text('List of TX'),
          )
        ],
      ),
    ));
  }
}
