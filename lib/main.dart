import 'package:exam_expense_tracker/view/expense_screen/expense_screen.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: ExpenseScreen(),
    );
  }
}