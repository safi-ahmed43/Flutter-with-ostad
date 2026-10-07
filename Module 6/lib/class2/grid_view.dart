import 'package:flutter/material.dart';

import 'add_product.dart';

class GridViewPractice extends StatefulWidget {
  const GridViewPractice({super.key});

  @override
  State<GridViewPractice> createState() => _GridViewPracticeState();
}

class _GridViewPracticeState extends State<GridViewPractice> {
  List<Map<String, dynamic>> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Practice'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 55),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              final product = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddProduct(),
                ),
              );

              if (product != null) {
                setState(() {
                  products.add(product);
                });
              }
            },
            child: Text('Add Products'),
          ),
        ],
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),

        itemCount: products.length,

        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightGreen,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 50,
                  color: Colors.white,
                ),

                ListTile(
                  textColor: Colors.white,
                  title: Text(
                    products[index]['name'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  subtitle: Text(
                    products[index]['price'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}