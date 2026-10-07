import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavPerson extends StatelessWidget {
  const NavPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        backgroundColor: Colors.red,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Person Page',style: TextStyle(
            fontSize: 30
        ),),
      ),
    );;
  }
}
