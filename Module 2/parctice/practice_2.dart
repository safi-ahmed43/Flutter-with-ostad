void main() {
  List<Map<String, dynamic>> items = [
    {'name': 'Pen', 'price': 10},
    {'name': 'Book', 'price': 250},
    {'name': 'Bag', 'price': 1200},
    {'name': 'Watch', 'price': 1500},
  ];
  for (int i = 0; i < items.length; i++) {
    if (items[i]['price'] >= 1000) {
      print(items[i]['name']);
    }
  }
}
