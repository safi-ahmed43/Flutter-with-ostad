import 'package:cart_card/screen/add_item.dart';
import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {



  const ItemList({super.key});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<Map<String, dynamic>> products=[];
  double getDiscountPrice(int index) {
    double price = double.parse(products[index]['price']);
    double discount = double.parse(products[index]['discount']);

    double discountAmount = price * discount / 100;

    return price - discountAmount;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALL ITEMS'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(    crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
          itemCount: products.length,
          itemBuilder: (context,index){
            return Card(
              child: Container(
                height: 600,
                child: Stack(
                  children: [
                    Image.network('${products[index]['url']}'),
                    Positioned(
                      bottom: 45,
                        left: 8,
                        child:
                          Text(products[index]['name'],style: TextStyle(
                            fontSize: 18
                          ),)
                    ),
                    Positioned(
                      bottom: 5,
                      left: 10,
                      right: 10,
                      child: Row(
                        children: [

                          if (products[index]['discount'] != '0' &&
                              products[index]['discount'] != '')
                            Text(
                              '৳${getDiscountPrice(index)}',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          // Regular price — পরে এবং line-through
                          if (products[index]['discount'] != '0' &&
                              products[index]['discount'] != '')
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                '৳${products[index]['price']}',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          if (products[index]['discount'] == '0' ||
                              products[index]['discount'] == '')
                            Text(
                              '৳${products[index]['price']}',
                            ),

                          Spacer(),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(15)
                            ),
              
                            child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.shopping_cart,color: Colors.white,)),
                          )
                        ],
                      ),
                    ),

                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15)),
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 7),

                        child: Text('${products[index]['discount']}% off',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border,color: Colors.red,),
                      ),
                    )
              
                  ],
                ),
              ),
            );
          },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async{
            final result = await Navigator.push(context, MaterialPageRoute(
                builder: (context) => AddItem(
                  products: products,)));
            if(result != null){
              setState(() {
                products = result;
              });
            }
          },
        icon: Icon(Icons.add),
        label: Text('Add new item'),
      ),
    );
  }
}
