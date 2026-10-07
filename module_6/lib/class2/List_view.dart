import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final students = [
      {
        'name': 'Shafi Ahmed',
        'course': 'Flutter',
        'phone': '01711111111',
      },
      {
        'name': 'Rahim Ahmed',
        'course': 'Dart',
        'phone': '01822222222',
      },
      {
        'name': 'Karim Hasan',
        'course': 'Firebase',
        'phone': '01933333333',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView and ListView.builder'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: students.length,
          itemBuilder: (context, index){
            return ListTile(
              contentPadding: EdgeInsets.all(10),
              splashColor: Colors.red,
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(students[index]['name']!),
                  Text(students[index]['course']!),
                  Row(
                    children: [
                      Text(students[index]['phone']!),
                      SizedBox(width: 5,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.call),
                      ),
                    ],
                  ),

                ],
              ),
            );
          }
      ),

      //   ListView(
      //     children: [
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //       Text('Hello  am Shafi . I am a Flutter Developer ',
      //         style:TextStyle(
      //           fontSize: 25
      //         )),
      //
      //     ],
      //
      // ),

    );
    
  }
}
