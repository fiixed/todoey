import 'package:flutter/material.dart';
import './screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import './models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
          child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

