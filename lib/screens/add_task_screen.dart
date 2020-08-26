import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newText;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    newText = value;
                  }),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                  onPressed: () {
                    Provider.of<Data>(context, listen: false)
                        .addTask(taskName: newText);
                    Navigator.pop(context);
                  },
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
