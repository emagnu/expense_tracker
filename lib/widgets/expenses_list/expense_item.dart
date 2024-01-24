//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../../models/expense.dart';
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
          // child: Text(expense.title[0]),
          child: Icon(categoryIcons[expense.category]),
        ),
        title: Text(expense.title),
        subtitle: Text(
          '£${expense.amount.toStringAsFixed(2)}',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        trailing: Text(
          expense.date.day.toString(),
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
