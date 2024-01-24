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
  // String _enteredTitle = '';
  // void _saveTitleImput(String inputValue) {_enteredTitle = inputValue;}

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

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
          Row(
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    // debugPrint(_enteredTitle);
                    debugPrint(_titleController.text);
                  },
                  child: const Text('Save Expense'))
            ],
          )
        ],
      ),
    );
  }
}
