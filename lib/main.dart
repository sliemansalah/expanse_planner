import './transaction.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.69,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'wed7',
      title: 'Weekly Georacy',
      amount: 16.53,
      date: DateTime.now(),
    )
  ];

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amoutController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title',),
                  controller: titleController,
              ),
                TextField(decoration: InputDecoration(labelText: 'Amount'),
                controller: amoutController,
             ),
                FlatButton(child: Text('Add Transaction',),
                textColor: Colors.purple, 
                onPressed: () {
                  print(titleController.text);
                  print(amoutController.text);
                },)
              ]),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        // 'A: ${tx.amount}',
                        '\$${tx.amount}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          // DateFormat('yyyy/MM/dd').format(tx.date) ,
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    ));
  }
}
