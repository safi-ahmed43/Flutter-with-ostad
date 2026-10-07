import 'package:cart_card/practice/add_new_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen1> {
  List<Map<String, dynamic>> products = [
    {
      'name': 'Mango',
      'price': 80,
      'qnt': 3,
      'category': 'Fruit',
    },
    {
      'name': 'Apple',
      'price': 120,
      'qnt': 5,
      'category': 'Fruit',
    },
    {
      'name': 'Rice',
      'price': 70,
      'qnt': 10,
      'category': 'Grocery',
    },
  ];
  Map<String, dynamic> product = {
    'name': 'Apple',
    'price': 120,
    'qnt': 5,
    'category':'Fruits'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Set'),
          backgroundColor: Colors.teal,
        ),
      body: Column(
        spacing: 10,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (){
                  products.add({
                    'name': 'Orange',
                    'price' : 90,
                    'qnt' : 6,
                    'category' : 'Fruits',
                  });
                  setState(() {

                  });
                },

                child: Text('Add Item')),
          ),
          Center(
            child: ElevatedButton (
                onPressed: () async {
                  final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewData(
                    name: 'Mango', price: 120,
                    qnt: 5,
                    products: product,
                    product: products,)));
                  if(result != null){
                    setState(() {
                      products= result;
                    });
                  }
                },

                child: Text('Add new Item')
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${products[index]['name']}'),
                        Text('Name: ${products[index]['price']}'),
                        Text('Name: ${products[index]['qnt']}'),
                        Text('Name: ${products[index]['category']}'),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}