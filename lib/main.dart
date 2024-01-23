//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'expenses.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Expenses(),
    );
  }
}