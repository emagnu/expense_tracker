//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  PARTS
import '../models/expense.dart';
//  Import FILES
//  PROVIDERS

///

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;

  const ExpensesList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: expenses.length,
          // itemBuilder: (context, index) => ExpenseListItem(expense: expenses[index],),
          itemBuilder: (context, index) => Text(expenses[index].title)),
    );
  }
}
