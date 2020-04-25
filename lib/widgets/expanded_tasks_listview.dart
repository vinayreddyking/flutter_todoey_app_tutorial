import 'package:flutter/material.dart';

import 'package:todoey_app/widgets/list_item.dart';

class ExpandedTasksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: <Widget>[
            TaskListItem(),
            TaskListItem(),
          ],
        ),
      ),
    );
  }
}
