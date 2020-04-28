import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallback;
  final Function onLongPressCallback;

  TaskTile({
    this.isChecked,
    this.title,
    this.checkBoxCallback,
    this.onLongPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onLongPressCallback,
        title: Text(
          title,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallback,
        ));
  }
}
