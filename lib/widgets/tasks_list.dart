import 'package:flutter/material.dart';

import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) => TaskTile(
        title: widget.tasks[i].title,
        isChecked: widget.tasks[i].isDone,
        checkBoxCallback: (_) => setState(() {
          widget.tasks[i].toggleDone();
        }),
      ),
      itemCount: widget.tasks.length,
    );
  }
}
