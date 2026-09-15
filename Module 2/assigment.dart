import 'dart:io';

void main() {
  for (;;) {
    print("===============================");
    print("  SMART TEMPERATURE CONVERTER");
    print("===============================\n");

    print("1. Celsius to Fahrenheit\n");
    print("2. Fahrenheit to Celsius\n");
    print("3. Celsius to Kelvin\n");
    print("4. Kelvin to Celsius\n");
    print("5. Fahrenheit to Kelvin\n");
    print("6. Kelvin to Fahrenheit\n");
    print("7. Exit\n");

    stdout.write("Enter youe choice: ");
    int choice = int.parse(stdin.readLineSync() ?? '0');
  
    if (choice == 7) {
      break;
    }
    print('');

    if (choice == 1) {
      stdout.write("Enter temperature in Celsius: ");
      double c = double.parse(stdin.readLineSync() ?? '0');
      final result = (c * 9 / 5) + 32;
      print("$c°C = ${result.toStringAsFixed(2)}°F");
    }
    else if (choice == 2) {
      stdout.write("Enter temperature in Fahrenheit: ");
      double f = double.parse(stdin.readLineSync() ?? '0');
      final result = (f - 32) * 5 / 9;
      print("$f°F = ${result.toStringAsFixed(2)}°C");
    }
    else if (choice == 3) {
      stdout.write("Enter temperature in Celsius: ");
      double c = double.parse(stdin.readLineSync() ?? '0');
      final result = (c + 273.15);
      print("$c°C = ${result.toStringAsFixed(2)} K");
    }
    else if (choice == 4) {
      stdout.write("Enter temperature in Kelvin: ");
      double k = double.parse(stdin.readLineSync() ?? '0');
      final result = (k - 273.15);
      print("$k K = ${result.toStringAsFixed(2)}°C");
    }
    else if (choice == 5) {
      stdout.write("Enter temperature in Fahrenheit: ");
      double f = double.parse(stdin.readLineSync() ?? '0');
      final result = (f - 32) * 5 / 9 + 273.15;
      print("$f°F = ${result.toStringAsFixed(2)} K");
    }
    else if (choice == 6) {
      stdout.write("Enter temperature in Kelvin: ");
      double k = double.parse(stdin.readLineSync() ?? '0');
      final result = (k - 273.15) * 9 / 5 + 32;
      print("$k K = ${result.toStringAsFixed(2)}°F");
    } 
    else {
      print("Please Enter a valid choice");
    }        

    stdout.write("\nDO you want to perform another conversion?(y/n): ");
    String option = stdin.readLineSync() ?? '';

    if (option.toLowerCase() == 'n') {
      break;
    }
  }
  print("\n===============================");
  print("Thank You! Program Ended");
  print("===============================\n");
}
