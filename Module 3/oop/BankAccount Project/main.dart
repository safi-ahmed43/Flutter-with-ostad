import 'dart:io';

import 'account_info.dart';
import 'bank_account.dart';

void main() {
  CreateAccount userAccess = CreateAccount();
  userAccess.accessAccount();
  BankAccount bankAsia = BankAccount();
  print('\n-------- Wellcome to Bank Asia --------\n');

  while (true) {
    print('\n1.Show Balance');
    print('2.Depoiste');
    print('3.Withdraw');
    print('4.Exit Account\n');

    stdout.write('Enter choice a number: ');
    int option = int.parse(stdin.readLineSync() ?? '');
    print('');

    switch (option) {
      case 1:
        bankAsia.showBalance();
      case 2:
        stdout.write('Enter the depoiste amount: ');
        double balance = double.parse(stdin.readLineSync() ?? '');
        bankAsia.depositBalance(balance);
        print('');
      case 3:
        stdout.write('Enter the widthdraw amount: ');
        double balance = double.parse(stdin.readLineSync() ?? '');
        bankAsia.withdrawBalance(balance);
        print('');
      case 4:
        return;
      default:
        print('Invalid Input');
    }
  }
}
