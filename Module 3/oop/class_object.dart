class BkashAccount {
  String? name;
  String? phoneNumber;
  double? balance;


}

main() {
  BkashAccount PX = BkashAccount();

  PX.name = 'Mr. Shafi';
  PX.phoneNumber = '01737951243';
  PX.balance = 5000.00;

  print(PX.name);
  print(PX.phoneNumber);
  print(PX.balance);
  print(PX);
}
