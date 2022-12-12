import 'package:flutter/material.dart';
import 'package:reminderapp/modal/todo_modal.dart';

class TodoProvider with ChangeNotifier {
  // List<todoModal> todoList = [];
  List todoList = [];
  List get todo => todoList;

  addTodo(String title, String todo) {
    todoList.add(todoModal(title: title, todo: todo));
    notifyListeners();
  }

  removeTodo(int index) {
    todoList.remove(index);
    notifyListeners();
  }
}
