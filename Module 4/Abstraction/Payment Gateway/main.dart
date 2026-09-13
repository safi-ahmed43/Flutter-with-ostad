import 'payment-system.dart';

void main() {
  PaymentGateway bkash = BkashPayment('011737951243');

  bkash.makePayment(1500.00);

  PaymentGateway card = CreditCardPayment('56374587364');

  card.makePayment(60000.00);
}
