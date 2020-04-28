import 'package:flutter/material.dart';

class RemoveTile extends StatelessWidget {
  final String title;
  final Function removeFunction;
  RemoveTile({this.title, this.removeFunction});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        'Delete $title ?',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.lightBlueAccent),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No')),
        FlatButton(
            onPressed: () {
              removeFunction();
              Navigator.pop(context);
            },
            child: Text('Yes')),
      ],
    );
  }
}
