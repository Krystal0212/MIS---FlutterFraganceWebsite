import 'cart_model.dart';

class Order {
  final String orderId;
  final String uid;
  final List<CartItem> items;

  Order({
    required this.orderId,
    required this.uid,
    required this.items,
  });

  // Convert Order object to JSON
  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'uid': uid,
      'items': items.map((item) => item.toJson()).toList(),
    };
  }

  // Convert JSON to Order object
  factory Order.fromJson(Map<String, dynamic> json) {
    final itemsJson = json['items'] as List<dynamic>;
    return Order(
      orderId: json['orderId'],
      uid: json['uid'],
      items: itemsJson.map((item) => CartItem.fromJson(item)).toList(),
    );
  }
}
