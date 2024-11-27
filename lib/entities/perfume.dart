class Perfume {
  final String name;
  final int stock;
  final int sold;
  final int receive;
  final double price;
  final Brand brand;

  Perfume(
      {
        required this.name,
        required this.stock,
        required this.price,
        required this.brand,
        required this.sold,
        required this.receive
      }
      );
}

class Brand {
  final String name;

  Brand({required this.name});
}
