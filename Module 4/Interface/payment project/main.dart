import 'checkout-service.dart';
import 'payment-gateway.dart';

void main(){
  print('------------------------------------');
  PaymentGateway bkash = BkashPayment();
  CheckoutService cart1 = CheckoutService(bkash);
  cart1.completePurchase(2500.0);
  print('-----------------------------');

  PaymentGateway nagad = NagadPayment();
  CheckoutService cart2 = CheckoutService(nagad);
  cart2.completePurchase(1000.0);
  print('-------------------\n');
  CreditCardPayment card = CreditCardPayment();
  card.processPayment(1500.00);
  card.refundPayment(500.00);
}