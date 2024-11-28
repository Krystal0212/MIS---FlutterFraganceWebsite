class Perfume {
  final String name;
  final int sold; // Units sold
  final int stock; // Current stock
  final int receive; // Units received during the period
  final double price; // Selling price per unit
  final double unitCost; // Cost per unit
  final Brand brand;

  Perfume({
    required this.name,
    required this.sold,
    required this.stock,
    required this.receive,
    required this.price,
    required this.unitCost,
    required this.brand,
  });

  // Beginning Inventory Cost (estimate as stock before receiving new units)
  double get beginningInventoryCost => (stock + sold - receive) * unitCost;

  // Ending Inventory Cost
  double get endingInventoryCost => stock * unitCost;

  // COGS calculation
  double get cogs => beginningInventoryCost + (receive * unitCost) - endingInventoryCost;
}

class Brand {
  final String name;

  Brand({required this.name});
}
