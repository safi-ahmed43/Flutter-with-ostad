import 'package:flutter/material.dart';

class AdvancedWidget extends StatefulWidget {
  const AdvancedWidget({super.key});

  @override
  State<AdvancedWidget> createState() => _AdvancedWidgetState();
}

class _AdvancedWidgetState extends State<AdvancedWidget> {
  bool isOverflow= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advance Widgets'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // Text Overflow and Maxline_____------------
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.',
            maxLines: isOverflow? 3 : 100,
              overflow: TextOverflow.ellipsis,
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    isOverflow = !isOverflow;
                  });
                },
                child: Text(isOverflow ?'See more' : 'See less',
                  style: TextStyle(color: Colors.grey),)),
            
            
            // Image fit and cache
            SizedBox(
              width: 300,
              height: 300,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40zslWo2-zv9gu7AyKjZ9Qsh-U4N9WmcIuH3ctztTi1uDJ3t-bwesfHc&s=10',
              fit: BoxFit.cover,
                cacheHeight: 100,
                cacheWidth: 100,
              ),
            ),
            
            SizedBox(height: 20,),
            
            //  All Button Section

            // Elevated
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
                backgroundColor:Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
                side: BorderSide(
                  width: 2,
                  color: Colors.red,
                  style: BorderStyle.solid
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
                onPressed: (){},
                child: Text('Elevated Button')
            ),

            SizedBox(height: 20,),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
                  foregroundColor: Colors.purpleAccent,
                  side: BorderSide(
                      width: 2,
                      color: Colors.purpleAccent,
                      style: BorderStyle.solid
                  ),

                  shape: StadiumBorder(),
                elevation: 20.0,
              ),
                onPressed: (){},
                child: Text('OutLIned Border')
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
                    backgroundColor:Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,
                    side: BorderSide(
                        width: 2,
                        color: Colors.red,
                        style: BorderStyle.solid
                    ),
                    shape: CircleBorder()
                ),
                onPressed: (){},
                child: Icon(Icons.add,size:30,),
            ),
            SizedBox(height: 20,),
            IconButton(
                style: IconButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
                    backgroundColor:Colors.green,
                    foregroundColor: Colors.white,
                    side: BorderSide(
                        width: 2,
                        color: Colors.red,
                        style: BorderStyle.solid
                    ),
                    shape: CircleBorder()
                ),
                onPressed: (){},
                icon: Icon(Icons.ads_click)
            ),
            
            SizedBox(height: 30,),
            
            //  Chip And Choices-----------
            
            Chip(
              mouseCursor: MouseCursor.defer  ,
                label: Text('Hello Chip'
                ))
            
            
            // SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
