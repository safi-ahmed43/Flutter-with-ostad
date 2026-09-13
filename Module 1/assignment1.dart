import 'dart:io';

void main() {
  stdout.write('Enter Student Name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter Age: ');
  int? age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter Student ID: ');
  String? studentId = stdin.readLineSync();

  stdout.write('Enter Email: ');
  String? email = stdin.readLineSync();

  stdout.write('Enter Phone Number: ');
  String? phoneNumber = stdin.readLineSync();

  print('Name: $name');
  print('Age: $age');
  print('Student ID: $studentId');
  print('Email: $email');
  print('Phone: ${phoneNumber!.isEmpty ? 'Not Provied':phoneNumber}');
}
