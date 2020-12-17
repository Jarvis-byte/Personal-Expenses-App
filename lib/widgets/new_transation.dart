import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransation extends StatelessWidget {
  String titleInput, amountInput;


  final Function addTx;
  NewTransation(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) {
                titleInput = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              onPressed: () {
                addTx(titleInput,double.parse(amountInput));
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
