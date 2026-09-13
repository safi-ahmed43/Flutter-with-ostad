void main() {
  Map<String, dynamic> person = {
    'name': 'Md Safi Ahmed',
    'age': 22,
    'adress': 'Kushtia',
    'experience': '7 years',
    'isMarried': false,
  };

  print(person);

  print(person['name']);
  print(person['age']);

  person['isMarried'] = true;
  print(person['isMarried']);

  person.remove('isMarried');
  print(person);

  person.addAll({'department': 'CST', 'cgpa': '3.70', 'Country': 'Bangladesh'});
  print(person);

  print(person.containsKey('cgpa'));
  print(person.containsKey('isMarried'));
  print(person.containsValue('Md Safi Ahmed'));

  var valueList = person.values.toList();
  for (var i in valueList) {
    print(i);
  }
  print('Hello');
  print(valueList);
  var valueSet = person.values.toSet();
  print(valueSet);
  var valueString = person.values.toString();
  print(valueString);
  valueList.forEach(print);
  valueSet.forEach(print);
  List<dynamic> data = [30, 60, 20, 70, 48];

  data.forEach(print);
}
