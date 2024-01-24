//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'widgets/expenses.dart';
//  PARTS
//  PROVIDERS

///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const Expenses(),
    );
  }
}
