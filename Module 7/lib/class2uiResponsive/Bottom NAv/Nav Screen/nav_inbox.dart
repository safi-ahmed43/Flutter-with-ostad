import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavInbox extends StatelessWidget {
  const NavInbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox Page'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Inbox Page',style: TextStyle(
            fontSize: 30
        ),),
      ),
    );;
  }
}
