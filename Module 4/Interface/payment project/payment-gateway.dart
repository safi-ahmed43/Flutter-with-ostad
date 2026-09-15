abstract class PaymentGateway{
  void processPayment(double amount);
}

class BkashPayment implements PaymentGateway{
  @override
  void processPayment(double amount) {
    print('Bkash Api Connected Now...');
    print('Via Bkash $amount tk payment Successfully');
  }
}

class NagadPayment implements PaymentGateway{
  @override
  void processPayment(double amount) {
    print('Nagad Api Connected Now...');
    print('Via Nagad $amount Tk Payment Auccessfully');
  }
}

abstract class Refundable {
  void refundPayment(double amount);
}

class CreditCardPayment implements PaymentGateway , Refundable{
  @override
  void processPayment(double amount) {
    print('Card Verification is Successfull');
    print('$amount tk charge successfull to Credit Card');
  }

  @override
  void refundPayment(double amount) {
    print('$amount tk Refund to Credit Card');
  }
}