import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String label;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({this.label, this.isChecked, this.checkboxCallback});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.label,
        style: TextStyle(
            decoration: widget.isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: widget.isChecked,
        onChanged: widget.checkboxCallback,
      ),
    );
  }
}
