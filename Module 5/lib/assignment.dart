import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.add)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.settings)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.call)
            ),
          ],
        ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            CircleAvatar(
              radius: 60,
              child: Icon(Icons.icecream_outlined,size: 60,color: Colors.black,),
            ),
            Text('Ice cream is very delicious right?',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 30,),
            CircleAvatar(
              radius: 60,
              child: Icon(Icons.code,size: 60,color: Colors.black,),
            ),
            Text('Programming is not boring if you love it',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            )
          ],
        ),
      )
    );
  }
}
