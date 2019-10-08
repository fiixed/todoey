import 'package:flutter/material.dart';
import './tasks_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback:  (checkboxState) {
             setState(() {
               widget.tasks[index].isDone = checkboxState;
             });
           }
        );
      },
    );
  }
}
