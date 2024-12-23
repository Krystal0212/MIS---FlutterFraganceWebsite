class CartItem {
  final String pid;
  final int quantity;

  CartItem({
    required this.pid,
    required this.quantity,
  });

  // Convert CartItem object to JSON
  Map<String, dynamic> toJson() {
    return {
      'pid': pid,
      'quantity': quantity,
    };
  }

  // Convert JSON to CartItem object
  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      pid: json['pid'],
      quantity: json['quantity'],
    );
  }
}
