//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../data/registered_expenses.dart';
import 'expenses_list/expenses_list.dart';
import 'new_expense.dart';
//  PARTS
//  PROVIDERS

///

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  //
//   final List<Expense> _registeredExpenses = [
//     Expense(
//       title: 'Flutter Course',
//       amount: 19.99,
//       date: DateTime.now(),
//       category: Category.work,
//     ),
//     Expense(
//       title: 'Cinema',
//       amount: 15.69,
//       date: DateTime.now(),
//       category: Category.leisure,
//     ),
//     Expense(
//       title: 'Groceries',
//       amount: 49.80,
//       date: DateTime.now(),
//       category: Category.food,
//     ),
//     Expense(
//       title: 'Night out with Elisa',
//       amount: 90.00,
//       date: DateTime.now(),
//       category: Category.leisure,
//     ),
//     Expense(
//       title: 'Trip tp Wycombe',
//       amount: 49.80,
//       date: DateTime.now(),
//       category: Category.travel,
//     ),
//     Expense(
//       title: 'Groceries',
//       amount: 22.50,
//       date: DateTime.now(),
//       category: Category.food,
//     ),
//     Expense(
//       title: 'Theatre',
//       amount: 60.50,
//       date: DateTime.now(),
//       category: Category.leisure,
//     ),
//   ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      // builder: (ctx) => const Text('Modal bottom sheet'),
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: <Widget>[
          IconButton(
              onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
        ],
        // title: const Text('Expenses'),
        title: const Text('Expenses Tracker'),
      ),
      body: Column(
        children: <Widget>[
          //  Toolbar with the Ass button => Row() -> in the appBar

          const Text('The Chart'),
          // Text('Expenses List ....'),
          // Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          Expanded(child: ExpensesList(expenses: registeredExpenses)),
        ],
      ),
    );
  }
}
