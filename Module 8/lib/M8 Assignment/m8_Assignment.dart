import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class M8Assignment extends StatelessWidget {
  const M8Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            'https://westernfinance.org/wp-content/uploads/speaker-3-v2.jpg',
                          ),
                        ),
                      ),
                      Text(
                        'John Doe',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    
                      Text(
                        'Flutter Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Passionate about creating user-friendly and engaging digital experiences.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.sp, color: Colors.black87),
                      ),
                      Divider(),
                    
                      Row(
                        spacing: 8,
                        children: [
                          Icon(Icons.mail),
                          Text('john.doe@example.com')
                      ],),
                      Row(
                        spacing: 8,
                        children: [
                          Icon(Icons.phone),
                          Text('+123 6574 875')
                      ],),
                    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 12,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(0, 35),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  backgroundColor: Colors.blueAccent[700],
                                  foregroundColor: Colors.white
                                ),
                                child: Text('Follow')
                            ),
                          ),
                          Expanded(
                            child: OutlinedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(0, 35),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                  foregroundColor: Colors.black
                                ),
                                child: Text('Message')),
                          )
                        ],
                      ),
                    
                    
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Interest',style: TextStyle(
                         fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            spacing: 5,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 130,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network('https://img.magnific.com/free-photo/beautiful_1203-2633.jpg?semt=ais_hybrid&w=740&q=80',fit: BoxFit.cover,))),
                              Text('Travel',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),),
                              Text('Exploring new places around the world',style: TextStyle(
                                fontSize: 13
                              ),),
                              Center(
                                child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(165, 40),
                                      foregroundColor: Colors.blueAccent,
                                      backgroundColor: Colors.grey[300],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )
                                    ),
                                    child: Text('View More',style: TextStyle(fontWeight: FontWeight.bold),)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            spacing: 5,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 130,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQyna_P2VAe2KgGPdZ2fz3pqM0AV7V3JKGOPd-IHeLsQ&s=10',fit: BoxFit.cover,))),
                              Text('Photography',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),),
                              Text('Capturing moment through the lens',style: TextStyle(
                                fontSize: 13
                              ),),
                              Center(
                                child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(165, 40),
                                        foregroundColor: Colors.blueAccent,
                                        backgroundColor: Colors.grey[300],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )
                                    ),
                                    child: Text('View More',style: TextStyle(fontWeight: FontWeight.bold),)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
