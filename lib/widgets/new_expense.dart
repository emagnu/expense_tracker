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
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  // String _enteredTitle = '';
  // void _saveTitleImput(String inputValue) {_enteredTitle = inputValue;}

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void cancelTransaction() {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
            // onChanged: _saveTitleImput,
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: _amountController,
            maxLength: 50,
            decoration:
                const InputDecoration(label: Text('Amount'), prefixText: '£ '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // debugPrint(_enteredTitle);
                  debugPrint(_titleController.text);
                  debugPrint(_amountController.text);
                },
                child: const Text('Save Expense'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Reset'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
