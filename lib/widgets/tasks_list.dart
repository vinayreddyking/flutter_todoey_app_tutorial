import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, i) => TaskTile(
            title: taskData.tasks[i].title,
            isChecked: taskData.tasks[i].isDone,
            checkBoxCallback: (_) => taskData.updateTask(taskData.tasks[i]),
          ),
          itemCount: taskData.tasksCount,
        );
      },
    );
  }
}
