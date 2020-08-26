import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function onChanged;
  final Function longPressCallBack;
  TaskTile(
      {@required this.isChecked,
      @required this.title,
      @required this.onChanged,
      @required this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
      onLongPress: longPressCallBack,
    );
  }
}
