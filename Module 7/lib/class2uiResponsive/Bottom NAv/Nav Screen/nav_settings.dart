import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavSettings extends StatelessWidget {
  const NavSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Settings Page',style: TextStyle(
            fontSize: 30
        ),),
      ),
    );;
  }
}
