//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  PARTS
//  PROVIDERS

///

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
          ),
        ],
      ),
    );
  }
}
