class Perfume {
  final String id;
  final String name;
  final String brand;
  final String description;
  final String imageUrl;
  final double price;
  final List<String> badgeText;

  Perfume({
    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.imageUrl,
    required this.price,
    required String badgeText,
  }): badgeText = badgeText.split(',').map((e) => e.trim()).toList();
}
