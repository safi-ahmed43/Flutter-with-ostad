
import 'package:flutter/material.dart';
import 'package:module_5/assignment.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purpleAccent,
          brightness: Brightness.light
        )
      ),

      home: ProfilePage(),
    );
  }
}
