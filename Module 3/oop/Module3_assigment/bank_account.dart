class BankAccount {
  String? accountHolderName;
  String? accountNumber;
  double _balance = 0.0;

  BankAccount(this.accountHolderName, this.accountNumber, this._balance);

  void deposit(double amount) {
    if (amount <= 0) {
      print('Invalid Amount!');
    } else {
      _balance = _balance + amount;
      print('After Deposit: Balance: ${_balance.toInt()}');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid amount!');
    } else if (amount > _balance) {
      print('Insufficient Balance!');
    } else {
      _balance -= amount;
      print('After Withdrawal: Balance: ${_balance.toInt()}');
    }
  
  }

  void displayAccountInfo() {
    print(
      'Account Holder: $accountHolderName Account Number: $accountNumber Balance: $_balance',
    );
  }
}
