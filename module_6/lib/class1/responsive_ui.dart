import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveUi extends StatefulWidget {
  const ResponsiveUi({super.key});

  @override
  State<ResponsiveUi> createState() => _ResponsiveUiState();
}

class _ResponsiveUiState extends State<ResponsiveUi> {
  late final width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive ui'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Aspect Ratio........
            Padding(padding: EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text('Flutter Responsive UI',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),),
                ),
              ),
            ),
            ),
          //   Fractional SizedBox...
            Padding(padding: EdgeInsets.all(20),
            child: FractionallySizedBox(
              widthFactor: 0.70,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text(
                  'Fractional Sized Box',
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 25,
                  ),
                ),),
              ),
            ),
            ),

          //   Layout Builder----

            Padding(
              padding: const EdgeInsets.all(20),
              child: LayoutBuilder(
                  builder: (context, constraint) {
                    if ( constraint.maxWidth < 600) {
                      return const Text(
                        'Mobile',
                        style: TextStyle(
                            fontSize: 25
                        ),
                      );
                    } else {
                      return const Text('Tablet/Desktop',
                      style: TextStyle(fontSize: 40),
                      );
                    }
                  }
              ),
            ),

          //   Media Query Width ----

            Padding(padding: const EdgeInsets.all(20),
              child: Text('Flutter',
                style: TextStyle(
                  fontSize: width < 600 ? 24:40,
                ),
              ),
            ),

            Center(child: Container(
              width: MediaQuery.of(context).size.width*0.60,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                  child: Text('Media Query',style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 30
                  ),)),
            ),),

          ],
        ),
      ),
    );
  }
}
