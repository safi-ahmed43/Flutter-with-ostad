import 'package:cart_card/class2uiResponsive/Bottom%20NAv/Nav%20Screen/nav_home.dart';
import 'package:cart_card/class2uiResponsive/Bottom%20NAv/Nav%20Screen/nav_inbox.dart';
import 'package:cart_card/class2uiResponsive/Bottom%20NAv/Nav%20Screen/nav_person.dart';
import 'package:cart_card/class2uiResponsive/Bottom%20NAv/Nav%20Screen/nav_settings.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  List pages = [
    NavHome(),
    NavInbox(),
    NavPerson(),
    NavSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: pages[selectedIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,

        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },

        backgroundColor: Colors.white,
        indicatorColor: Colors.teal,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,



        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.message_outlined),
            selectedIcon: Icon(Icons.message),
            label: 'Inbox',
          ),

          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Person',
          ),

          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}