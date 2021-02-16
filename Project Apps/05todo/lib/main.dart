import 'package:flutter/material.dart';
import 'package:todo/screens/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Todo list',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: TodoListScreeen(),
    );
  }
}
