import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Ui'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Text('Fixed Container w100, h100'),
            SizedBox(height: 40,),
            Container(
              width: width*0.25,
              height: height*0.12,
              color: Colors.teal,
            ),
            Text("Responsive Container w&h media query"),
            SizedBox(height: 20,),
            /// Using responsive package
            Container(
              width: 100.w,
              height: 100.h,
              color: Colors.teal,
            ),
            Text("Responsive Container w&h screen utils",style: TextStyle(fontSize: 20.sp),),
          ],
        ),
      ),
    );
  }
}
