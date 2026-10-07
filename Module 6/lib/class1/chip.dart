import 'package:flutter/material.dart';

class ChipPractice extends StatefulWidget {
  const ChipPractice({super.key});

  @override
  State<ChipPractice> createState() => _ChipPracticeState();
}

class _ChipPracticeState extends State<ChipPractice> {
  String selectedLevel = 'Beginner';
  bool isSelected=false;

  bool burger = false;
  bool pizza = false;
  bool chicken = false;
  bool drinks = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Chip Practice'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 20,),
            Text('Basic Chip...',style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),),
            Center(
              child: Wrap(
                spacing: 10,
                children: [
                  Chip(label: Text('Flutter')),
                  Chip(label: Text('Dart')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Git Hub')),
                ],
              ),

            ),
            Text('Input Chip...',style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),),

            Center(
              child: InputChip(
                  label: Text('Flutter'),
                selected: isSelected,
                onSelected: (value) {
                    setState(() {
                      isSelected = value;
                    });
                },
                onDeleted: () {
                    print('Flutter Removed');
                },
              ),
            ),
            Text('Choice Chip...',style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),),

            Center(
              child: Wrap(
                spacing: 10,
                children: [
                  ChoiceChip(
                      label: Text('Beginner'),
                      selected: selectedLevel == 'Beginner',
                    onSelected: (value){
                        setState(() {
                          selectedLevel = 'Beginner';
                        });
                    },

                  ),
                  ChoiceChip(
                      label: Text('Intermediate'),
                      selected: selectedLevel == 'Intermediate',
                    onSelected: (value){
                        setState(() {
                          selectedLevel = 'Intermediate';
                        });
                    },

                  ),
                  ChoiceChip(
                      label: Text('Advanced'),
                      selected: selectedLevel == 'Advanced',
                    onSelected: (value){
                        setState(() {
                          selectedLevel = 'Advanced';
                        });
                    },

                  ),
                ],
              ),
            ),

            Text('Filter Chip...',style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),),

            Center(
              child: Wrap(
                spacing: 6,
                children: [
                  FilterChip(
                      label: Text('burger'),
                      selected: burger,
                      onSelected: (value) {
                        setState(() {
                          burger = value;
                        });
                      },
                  ),FilterChip(
                      label: Text('pizza'),
                      selected: pizza,
                      onSelected: (value) {
                        setState(() {
                          pizza = value;
                        });
                      },
                  ),FilterChip(
                      label: Text('chicken'),
                      selected: chicken,
                      onSelected: (value) {
                        setState(() {
                          chicken = value;
                        });
                      },
                  ),FilterChip(
                      label: Text('drinks'),
                      selected: drinks,
                      onSelected: (value) {
                        setState(() {
                          drinks = value;
                        });
                      },
                  ),

                ],
              ),
            ),
            Text('Action Chip...',style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),),
            
            Center(
              child: ActionChip(
                  label: Text('Add to Cart'),
                onPressed: (){
                    print('Product add to carted!');
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}
