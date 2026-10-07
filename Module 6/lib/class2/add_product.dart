import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController pName = TextEditingController();
  TextEditingController pPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Products'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: pName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Name',
                  hintText: 'Enter Product name',
                  prefixIcon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      pName.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: pPrice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Price',
                  hintText: 'Enter Product Price',
                  prefixIcon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      pPrice.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              width: 250,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),

                onPressed: () {
                  Navigator.pop(
                    context,
                    {
                      'name': pName.text,
                      'price': pPrice.text,
                    },
                  );
                },

                child: Text('Add Products'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}