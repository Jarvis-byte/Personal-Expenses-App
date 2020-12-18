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


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      //  NewTransation(_addNewTransation),
      //  TransactionList(_userTransations),
      ],
    );
  }
}
