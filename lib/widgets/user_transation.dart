import 'package:expenses/models/transaction.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:flutter/cupertino.dart';

import 'new_transation.dart';

class UserTransation extends StatefulWidget {
  @override
  _UserTransationState createState() => _UserTransationState();
}

class _UserTransationState extends State<UserTransation> {
  int count;
  final List<Transaction> _userTransations = [
    Transaction('t1', 'New Shows', 69.70, DateTime.now()),
    Transaction('t2', 'Weekly Groceries', 16.54, DateTime.now()),
  ];

  void _addNewTransation(String txTitle, double txAmount) {
    final newTx = Transaction(
        DateTime.now().toString(), txTitle, txAmount, DateTime.now());
    setState(() {
      _userTransations.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransation(_addNewTransation),
        TransactionList(_userTransations),
      ],
    );
  }
}
