import 'bank_account.dart';

void main() {
  BankAccount user1 = BankAccount('Md Safi Ahmed', '1001', 5000.00);
  BankAccount user2 = BankAccount('Md Ashraful Islam', '1002', 4000.00);
  user1.displayAccountInfo();
  user1.deposit(2000.00);
  user1.withdraw(2000.00);
  user2.displayAccountInfo();
}
