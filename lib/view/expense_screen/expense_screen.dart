import 'package:exam_expense_tracker/view/expense_list_screen/expense_list_screen.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  TextEditingController Amtcontroller = TextEditingController();
  TextEditingController Catcontroller =TextEditingController();
  TextEditingController Descontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("Expense Tracker",style: TextStyle(color: Colors.white),)),
      ),
     body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: TextFormField(controller:Amtcontroller ,
              
              decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

                hintText: "Add amount",
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: IconButton(onPressed: (){
                 
                }, icon: Icon(Icons.calendar_month,color: Colors.grey,))
                
              ),
                      
              
              ),
            ),
            SizedBox(height: 20,),
            TextField(controller: Catcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

              hintText: "Add Category",
              hintStyle: TextStyle(color: Colors.grey)
            ),
        
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: Descontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Add Description",
                hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
            SizedBox(height: 40,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ExpenseListScreen() ));
            }, child: Center(
              child: Text("Save",style: TextStyle(color: Colors.blueGrey),),
            ))
          ],
        
        ),
        
      ),
     ),
    );
  }
}

