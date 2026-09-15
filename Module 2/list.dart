main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  // Element Add
  print(numbers);
  numbers.add(30);
  print(numbers);
  numbers.addAll([40, 50, 60]);
  print(numbers);
  numbers.insert(1, 90);
  print(numbers);
  numbers.insertAll(3, [10, 20, 25]);
  print(numbers);

  // Element Removed

  numbers.remove(10);
  print(numbers);
  numbers.removeAt(2);
  print(numbers);
  numbers.removeLast();
  print(numbers);
  print('Index of list: ${numbers.length}');

  // Element Update

  numbers[1] = 91;
  print(numbers);

  numbers.replaceRange(1, 6, [99, 88, 65, 45, 65]);
  print(numbers);

  // Data Sorted and reverse
  numbers.sort();
  print(numbers);
  final reverse = numbers.reversed;
  print(reverse);

  print(numbers.contains(45));

  // Transforming & Iterating
  print('\nTransforming & Iterating\n');

  List<String> names = ['Shafi', 'Ashraful', 'Rafiu'];
  print(names);

  names.forEach((name) {
    print('Hello $name');
  });

  var doubledNumbers = numbers.map((n) => n * 2).toList();
  print(doubledNumbers);
  names.sort();
  print(names);
}
