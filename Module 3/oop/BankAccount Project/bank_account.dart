class BankAccount {
  double mainBalance = 0;

  void showBalance() {
    print('Your Current Balance is: ${mainBalance.toStringAsFixed(2)}');
  }
  
  double depositBalance(double balance) {
    
    if (balance <= 0) {
      print('Invalid amount! please valid amount-');
    } else {
      mainBalance += balance;
      print('$balance  taka Deposite Successfully ');
      print('Your updated balance now: $mainBalance');
    }
    return mainBalance;
  }

  void withdrawBalance(double balance) {
    if (balance <= 0) {
      print('Invalid Balance! Please enter a valid balance-');
      return;
    } else if (balance > mainBalance) {
      print('Insufficient Balance!');
      return;
    } else {
      mainBalance -= balance;
      print('$balance  taka withdrawn Successfully ');
      print('Your updated balance now: $mainBalance');
    }
  }
}
