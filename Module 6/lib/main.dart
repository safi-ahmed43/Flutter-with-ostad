import 'package:flutter/material.dart';
import 'package:module_6/class2/List_view.dart';
import 'package:module_6/class2/grid_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 6 All Class',
      debugShowCheckedModeBanner: false,
      home: GridViewPractice(),
    );
  }
}
