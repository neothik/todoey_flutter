import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, taskData, child) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              onChanged: (value) {
                taskData.toggleTaskDone(index);
              },
              longPressCallBack: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        ),
      );
    });
  }
}
