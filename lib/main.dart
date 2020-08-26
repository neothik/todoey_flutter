import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screens.dart';
import 'models/tasks.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
