import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewData extends StatefulWidget {
  final String name;
  final int price;
  final int qnt;
  final Map<String, dynamic> products;
  final List<Map<String, dynamic>> product;
  const AddNewData({super.key, required this.name, required this.price, required this.qnt, required this.products, required this.product});

  @override
  State<AddNewData> createState() => _AddNewDataState();
}

class _AddNewDataState extends State<AddNewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new Item'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),body: Center(
      child: Column(
        spacing: 20,
        children: [
          Card(
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${widget.products['name']}'),
                  Text('Price: ${widget.products['price']}'),
                  Text('Quantity: ${widget.products['qnt']}'),
                  Text('Category: ${widget.products['category']}'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Name: ${widget.name}'),
                  Text('Price: ${widget.price} tk'),
                  Text('Quantity: ${widget.qnt} kg')
                ],
              ),
            ),
          ),
          Text(widget.name),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    widget.product.add({
                      'name': 'Cherry',
                      'price' : 40,
                      'qnt' : 4,
                      'category' : 'Fruits',
                    });
                  });
                },
                child: Text('Add Item')),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context, widget.product);
              },
              child: Text('Go Back'
              )),
          Expanded(
              child: ListView.builder(
                itemCount: widget.product.length,
                itemBuilder: (context, index){
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Name: ${widget.product[index]['name']}'),
                          Text('Name: ${widget.product[index]['price']}'),
                          Text('Name: ${widget.product[index]['qnt']}'),
                          Text('Name: ${widget.product[index]['category']}'),
                          SizedBox(height: 20,)

                        ],
                      ),
                    ),
                  );
                },
              )
          )
        ],
      )
    ),
    );
  }
}
