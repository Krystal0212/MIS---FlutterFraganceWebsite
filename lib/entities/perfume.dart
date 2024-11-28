enum SizeType { ml, oz }

class Perfume {
  final String name;
  final List<int> sold; // Units sold
  final List<int> stock; // Current stock
  final List<int> receive; // Units received during the period
  final List<double> price; // Selling price per unit
  final List<double> unitCost; // Cost per unit
  final List<double> sizes;
  final SizeType sizeType;
  final String description;
  final String imageUrl;
  final Brand brand;

  Perfume({
    required this.name,
    required this.sold,
    required this.stock,
    required this.receive,
    required this.price,
    required this.unitCost,
    required this.brand,
    required this.sizes,
    required this.sizeType,
    required this.description,
    required this.imageUrl,
  });

  // Total units sold
  int get totalUnitSold => sold.reduce((a, b) => a + b);

  // Total units received
  int get totalUnitReceived => receive.reduce((a, b) => a + b);

  // Total units in stock
  int get totalUnitInStock => stock.reduce((a, b) => a + b);

  double get lowestPrice => price.reduce((a, b) => a < b ? a : b);

  // Beginning Inventory Cost (estimate as stock before receiving new units)
  double get totalProductBeginningInventoryCost {
    double total = 0;
    for (int i = 0; i < stock.length; i++) {
      total += (stock[i] + sold[i] - receive[i]) * unitCost[i];
    }
    return total;
  }

  // Ending Inventory Cost
  double get totalProductEndingInventoryCost {
    double total = 0;
    for (int i = 0; i < stock.length; i++) {
      total += stock[i] * unitCost[i];
    }
    return total;
  }

  // Net Sales calculation
  double get totalProductNetSales {
    double total = 0;
    for (int i = 0; i < sold.length; i++) {
      total += sold[i] * price[i];
    }
    return total;
  }

  // COGS calculation
  double get totalProductCogs {
    double totalCostOfReceivedInventory = 0;

    for (int i = 0; i < receive.length; i++) {
      totalCostOfReceivedInventory += receive[i] * unitCost[i];
    }

    double result = totalProductBeginningInventoryCost +
        totalCostOfReceivedInventory -
        totalProductEndingInventoryCost;

    return result;
  }
}

class Brand {
  final String name;

  Brand({required this.name});
}
