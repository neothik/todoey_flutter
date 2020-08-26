import 'package:flutter/cupertino.dart';
import 'dart:collection';

class Task {
  final String name;
  bool isDone;

  Task({this.isDone = false, @required this.name});

  void toggleDone() {
    isDone = !isDone;
  }
}

class Data extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Egg'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy something'),
  ];

  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  String getTaskName(int idx) => _tasks[idx].name;
  bool getTaskStatus(int idx) => _tasks[idx].isDone;

  void addTask({String taskName, bool isDone = false}) {
    _tasks.add(Task(name: taskName, isDone: isDone));
    notifyListeners();
  }

  void toggleTaskDone(int idx) {
    _tasks[idx].toggleDone();
    notifyListeners();
  }

  void deleteTask(int idx) {
    _tasks.removeAt(idx);
    notifyListeners();
  }
}
