import 'package:flutter/foundation.dart';

import 'package:todoey_app/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [
    Task(title: 'Buy Milk'),
    Task(title: 'Buy Eggs'),
    Task(title: 'Buy Bread'),
  ];

  int get tasksCount {
    return tasks.length;
  }
}
