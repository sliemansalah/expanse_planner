import '../models/transaction.dart';
import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction.list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(),
      TransactionList(_userTransactions)
    ],);
  }
}