import 'payment-system.dart';

class Shop {
  void processOrder(PaymentGateway paymentMethod, double totalAmount) {
    print('PAyment Processing.......');
    paymentMethod.makePayment(totalAmount);
    print('Thank your ! your order successfully\n');
  }
}
