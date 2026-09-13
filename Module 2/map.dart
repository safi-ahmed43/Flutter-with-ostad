void main() {
  Map<String, dynamic> student = {
    'name': 'Shafi',
    'age': 22,
    'grade': 'A',
    'isPassed': true,
  };

  print(student);
  print(student['name']);
  student['grade'] = 'A+';
  print(student);
  student['city'] = 'Dhaka';
  print(student);
  student.remove('city');
  print(student);
  print(student['city']);
  print(student.keys);
  print(student.values);

  print("Student: ${student.length}");

  print(student.containsKey('name'));
}
