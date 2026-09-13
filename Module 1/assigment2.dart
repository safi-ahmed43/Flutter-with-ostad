import 'dart:io';

void main() {
  stdout.write('Enter Total Marks: ');
  int totalMarks = int.parse(stdin.readLineSync() ?? '');
  stdout.write('Enter Obtained Mark: ');
  int obtainedMark = int.parse(stdin.readLineSync() ?? '');

  final percentage = (obtainedMark / totalMarks) * 100;
  String grade = '';
  String status = '';

  if (percentage >= 80) {
    grade = 'A+';
  } else if (percentage >= 70) {
    grade = 'A';
  } else if (percentage >= 60) {
    grade = 'A-';
  } else if (percentage >= 50) {
    grade = 'B';
  } else if (percentage >= 40) {
    grade = 'C';
  } else if (percentage >= 33) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  if (percentage >= 33) {
    status = 'Passed';
  } else {
    status = 'Failed';
  }

  print('Total Marks: $totalMarks');
  print('Obtained Marks: $obtainedMark');
  print('Percentage: ${percentage.toInt()}%');
  print('Grade: $grade');
  print('Status: $status');
}
