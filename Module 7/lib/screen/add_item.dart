import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  final List<Map<String, dynamic>> products;
  const AddItem({super.key, required this.products});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  TextEditingController productUrl=TextEditingController();
  TextEditingController productName=TextEditingController();
  TextEditingController productPrice=TextEditingController();
  TextEditingController productDiscount=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Item'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Form(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: productUrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                hintText: 'Enter Products image url',
                labelText: 'Product Image Url',
                prefixIcon: Icon(Icons.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: productName,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                hintText: 'Enter products name..',
                labelText: 'Product Name',
                prefixIcon: Icon(Icons.shopping_cart),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: productPrice,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                hintText: 'Enter product price...',
                labelText: 'Product Price',
                prefixIcon: Icon(Icons.monetization_on),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: productDiscount,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                hintText: 'Enter discount of amount percent',
                labelText: 'Discount Amount',
                prefixIcon: Icon(Icons.discount),
              ),
            ),
          ),

          SizedBox(height: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                minimumSize: Size(300, 55)
              ),
              onPressed: (){
                widget.products.add({
                  'url': productUrl.text,
                  'name': productName.text,
                  'price':productPrice.text,
                  'discount':productDiscount.text
                });
                Navigator.pop(context,widget.products);
              },
              child: Text('Add Item'))
        ],
      )),
    );
  }
}
