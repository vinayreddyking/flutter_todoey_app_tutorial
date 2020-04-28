import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'package:todoey_app/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy Milk'),
    Task(title: 'Buy Eggs'),
    Task(title: 'Buy Bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    final newTask = Task(title: taskTitle);
    _tasks.insert(0, newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
