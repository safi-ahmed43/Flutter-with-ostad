void main() {
  List<Map<String, dynamic>> cart = [
    {'name': 'Shirt', 'price': 3400},
    {'name': 'pant', 'price': 4400},
    {'name': 'shoes', 'price': 2000},
  ];

  // int totalPrice = cart.fold(
  //   0,
  //   (total, item) => total + (item['price']) as int,
  // );
  // print(totalPrice);

  var product1 = cart[0]['name'];
  var price1 = cart[0]['price'];

  print('Product= $product1');
  print('Price= $price1');
}
