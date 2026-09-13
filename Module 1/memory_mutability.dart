main() {
  final DateTime now = DateTime.now();
  print(now);

  var list1 = const [1, 2, 3];
  var list2 = const [1, 2, 3];

  print(identical(list1, list2));

  final list3 = [1, 2, 3];
  final list4 = [1, 2, 3];
  list4.add(4);

  print(identical(list3, list4));

  
}
