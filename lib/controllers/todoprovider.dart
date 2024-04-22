import 'package:flutter/material.dart';
import 'package:todoprovider/models/todo.dart';

class ToDoProvider extends ChangeNotifier{
  final List<ToDo> _todos=[];
List<ToDo> get todos => _todos;//model
void addtodo(ToDo todo){
_todos.add(todo);
notifyListeners();
}
void delete(ToDo todo){
  _todos.remove(todo);
  notifyListeners();
}
}