import 'package:cart_card/class2uiResponsive/Bottom%20NAv/Nav%20Screen/nav_inbox.dart';
import 'package:cart_card/class2uiResponsive/Bottom%20NAv/Nav%20Screen/nav_person.dart';
import 'package:cart_card/class2uiResponsive/Bottom%20NAv/Nav%20Screen/nav_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavHome extends StatelessWidget {
  const NavHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.tealAccent,
          centerTitle: true,
          foregroundColor: Colors.white,
          bottom: TabBar(
              tabs: [
                Tab(text: 'Inbox'),
                Tab(text: 'Person'),
                Tab(text: 'Settings'),
              ]),
        ),
        body: TabBarView(
            children: [
              // Center(child: Text('INBOX PAGE!')),
              // Center(child: Text('PERSON PAGE!')),
              // Center(child: Text('SETTINGS PAGE!')),
              NavInbox(),
              NavPerson(),
              NavSettings(),
            ]
        )
      ),
    );
  }
}
