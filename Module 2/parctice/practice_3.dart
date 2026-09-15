void main() {
  List<Map<String, dynamic>> student = [
    {'name': 'Rahim', 'marks': 85},
    {'name': 'Karim', 'marks': 78},
    {'name': 'Sumon', 'marks': 92},
  ];

  int totalMarks = student.fold(
    0,
    (total, marks) => total + (marks['marks']) as int,
  );
  print('Total Marks: $totalMarks');
}
