import 'package:flutter/material.dart';

class ExpenseListScreen extends StatefulWidget {
  const ExpenseListScreen({super.key});

  @override
  State<ExpenseListScreen> createState() => _ExpenseListScreenState();
}

class _ExpenseListScreenState extends State<ExpenseListScreen> {
  
  final List<String> expenses = [
    'Rent - Rs.1200',
    'Groceries - Rs.200',
    'Utilities - Rs.150',
    'Transportation - Rs.50',
    'Entertainment - Rs.100',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense List'),
      ),
      body: ListView.builder(
        itemCount: expenses.length, 
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(expenses[index]),  
            trailing:  Icon(Icons.delete),  
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}
