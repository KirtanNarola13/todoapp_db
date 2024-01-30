import 'package:flutter/material.dart';
import 'package:todoapp_db/modules/screens/home/view/home.dart';
import 'package:todoapp_db/modules/screens/todo/view/todo.dart';

import 'modules/screens/create_todo/view/create_todo.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Custom',
      ),
      routes: {
        '/': (context) => Home(),
        'create': (context) => CrateTodo(),
        'view': (context) => ViewTodo(),
      },
    ),
  );
}
