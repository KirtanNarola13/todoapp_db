import 'package:flutter/material.dart';
import 'package:todoapp_db/modules/screens/home/view/home.dart';

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
      },
    ),
  );
}
