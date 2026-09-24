import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;
  void showMsg(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Element Clicked!')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 200,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            showMsg(context);
          },
              icon: Icon(Icons.outbox)
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text('I am a flutter developer',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),),
 
                ],
              ),
            ),
            Text('Hello World!',style: TextStyle(fontSize: 25,color: Theme.of(context).colorScheme.primary),),
            Text('Hello World!',style: TextStyle(fontSize: 25,color: Theme.of(context).colorScheme.primary),),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Clicked',
          onPressed: (){},
        child: Icon(Icons.front_hand_sharp),
      ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // ৪টি item থাকলে এটি দেওয়া জরুরি
            backgroundColor: Colors.deepPurpleAccent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
          currentIndex: _currentIndex,

        onTap: (index){
            setState(() {
              _currentIndex=index;
            });
            showMsg;
        },
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ] ),
    );
  }
}
