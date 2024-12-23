class Perfume {
  final String id;
  final String name;
  final String brand;
  final String description;
  final String imageUrl;
  final double price;
  int quantity;
  final List<String> badgeText;
  final List<String> size;

  Perfume({
    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.quantity,
    required this.badgeText,
    required this.size,
  });

  // Deserialize from JSON
  factory Perfume.fromJson(Map<String, dynamic> json) {
    return Perfume(
      id: json['id'],
      name: json['name'],
      brand: json['brand'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
      quantity: json['quantity'],
      badgeText: List<String>.from(json['badgeText']),
      size: List<String>.from(json['size']),
    );
  }

  // Serialize to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity,
      'badgeText': badgeText,
      'size': size,
    };
  }

  // Create a copy with updated fields
  Perfume copyWith({int? quantity}) {
    return Perfume(
      id: id,
      name: name,
      brand: brand,
      description: description,
      imageUrl: imageUrl,
      price: price,
      quantity: quantity ?? this.quantity,
      badgeText: badgeText,
      size: size,
    );
  }
}
