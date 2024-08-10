import 'event.dart';

class CartItem {
  final Event event;
  int quantity;

  CartItem({required this.event, this.quantity = 0});
}