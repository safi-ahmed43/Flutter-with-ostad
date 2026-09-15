import 'payment-gateway.dart';

class CheckoutService{
  final PaymentGateway paymentGateway;

  CheckoutService(this.paymentGateway);

  void completePurchase(double amount) {
    paymentGateway.processPayment(amount);
  }

}