abstract class PaymentGateway {
  void makePayment(double amount);
}

class BkashPayment extends PaymentGateway {
  String phoneNumber;
  BkashPayment(this.phoneNumber);

  @override
  void makePayment(double amount) {
    print(
      'Payment of ৳ $amount via bKash ($phoneNumber) has been successfully completed!',
    );
  }
}

class CreditCardPayment extends PaymentGateway {
  String cardNumber;

  CreditCardPayment(this.cardNumber);

  @override
  void makePayment(double amount) {
    print(
      'Payment of ৳ $amount via Credit Card ($cardNumber) has been successfully completed!',
    );
  }
}
