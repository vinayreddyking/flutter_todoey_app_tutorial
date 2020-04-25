import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('This is Task'),
      value: false,
      onChanged: (_) {},
    );
  }
}
