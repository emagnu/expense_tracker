//   //
//  Import LIBRARIES
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';
//  Import FILES
//  PARTS
//  PROVIDERS

///

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem({
    required this.expense,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(expense.title[0]),
        ),
        title: Text(expense.title),
        subtitle: Text(
          '£${expense.amount.toStringAsFixed(2)}',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        trailing: Text(
          expense.date.day.toString(),
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
