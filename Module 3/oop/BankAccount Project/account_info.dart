import 'dart:io';

class CreateAccount {
  List<Map<String, dynamic>> userAccount = [];

  void accessAccount() {
    print('------Well Come to BAnk Asia------\n');
    print('1. Create a new Account');
    print('2.Login your account\n');

    stdout.write('Choice a number: ');
    int option = int.parse(stdin.readLineSync() ?? '0');
    if (option == 1) {
      stdout.write('Enter your name: ');
      String name = stdin.readLineSync() ?? '';
      stdout.write('Enter your NID: ');
      String nid = stdin.readLineSync() ?? '';
      stdout.write('Enter Nomine Nid: ');
      String nNid = stdin.readLineSync() ?? '';
      stdout.write('Enter your password: ');
      String pin = stdin.readLineSync() ?? '';

      userAccount.add({'name': name, 'nid': nid, 'nNid': nNid, 'setPIN': pin});

      print('\n Account Created Successfully');
    } else if (option == 2) {
      stdout.write('Enter the user  Nid:');
      String uNid = stdin.readLineSync() ?? '0';
      stdout.write('Enter the account pin: ');
      String uPin = stdin.readLineSync() ?? '0';

      bool isMatched = userAccount.any(
        (user) => user['nid'] == uNid && user['setPIN'] == uPin,
      );

      if (isMatched) {
        print('\n Login Successfull! Wellcome to Bank Asia');
      } else {
        print('Invalid PAswword or Nid');
      }
    }
  }
}
