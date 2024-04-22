import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/controllers/todoprovider.dart';
import 'package:todoprovider/views/homescreen.dart';
void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: ( context)=>ToDoProvider(),
    child: const MaterialApp(
      home: HomeScreen(
        
      ),
    ));
  }
}