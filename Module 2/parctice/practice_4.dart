void main() {
  List<Map<String, dynamic>> cart = [
    {'name': 'Laptop', 'price': 50000, 'quantity': 1, 'hasDiscount': true},
    {'name': 'Mouse', 'price': 500, 'quantity': 2, 'hasDiscount': false},
    {'name': 'Keyboard', 'price': 1500, 'quantity': 1, 'hasDiscount': true},
    {'name': 'Headphone', 'price': 2000, 'quantity': 2, 'hasDiscount': false},
  ];

  int totalQuantitiy = cart.fold(
    0,
    (total, quan) => total + (quan['quantity'] as int),
  );
  double totalBill = 0;

  for (int i = 0; i < cart.length; i++) {
    double itemPrice = (cart[i]['price'] * cart[i]['quantity']).toDouble();
    totalBill += cart[i]['hasDiscount'] ? itemPrice * 0.9 : itemPrice;
    // if (cart[i]['hasDiscount'] == true) {
    //   totalBill += totalPrice - (totalPrice * 0.10);
    // } else {
    //   totalBill += totalPrice;
    // }
  }
  print('Total Quantity: $totalQuantitiy');
  print('Total Bill: ${totalBill.toStringAsFixed(2)}');
}
