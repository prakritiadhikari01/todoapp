import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/todoprovider.dart';
import '../models/todo.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
        // Prompt user to enter a task
    final todoprovider = Provider.of<ToDoProvider>(context);
    TextEditingController titlecontroller = TextEditingController();
    TextEditingController descriptioncontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: Column(
        children: [

          TextFormField(
    controller: titlecontroller,
    decoration: InputDecoration(
      labelText: 'Enter task',
    ),
  ),
  TextFormField(
    controller: descriptioncontroller,
    decoration: InputDecoration(
      labelText: 'Enter description',
    ),
  ),

  MaterialButton(onPressed: (){
    ToDo todo=ToDo(titlecontroller.text, descriptioncontroller.text) ;
todoprovider.addtodo (todo) ;
Navigator.pop(context);

         },
  

  child: Text("Save"),
  
  )
],
      ),
    );
  }
}