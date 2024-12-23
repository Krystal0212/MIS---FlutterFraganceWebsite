
class Branch {
  final String id; // Unique branch ID
  final String name;
  final String location;

  Branch({required this.id, required this.name, required this.location});

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(id: json['id'], name: json['name'], location: json['location']);
  }
}

class BranchPerfumeData {
  List<int> sold; // Units sold in the branch
  List<int> storage; // Current stock in the branch
  List<int> isShippingFromStock;
  List<double> sizes;

  BranchPerfumeData({
    required this.sold,
    required this.storage,
    required this.sizes,
    required this.isShippingFromStock,
  });

  int get totalUnitInStorage =>
      storage.reduce((a, b) => a + b) +
      isShippingFromStock.reduce((a, b) => a + b);

  int get totalUnitSoldInBranch => sold.reduce((a, b) => a + b);

  double beginningInventoryCostInBranch(List<double> unitCost) {
    double beginningCost = 0;
    for (int i = 0; i < storage.length; i++) {
      beginningCost += storage[i] * unitCost[i];
    }
    return beginningCost;
  }

  double totalPurchasedInBranch(List<double> unitCost) {
    double totalPurchased = 0;
    for (int i = 0; i < storage.length; i++) {
      totalPurchased += isShippingFromStock[i] * unitCost[i];
    }
    return totalPurchased;
  }

  double totalCOGSInBranch(List<double> price) {
    double totalCOGS = 0;
    for (int i = 0; i < storage.length; i++) {
      totalCOGS += sold[i] * price[i];
    }
    return totalCOGS;
  }

  double totalProductInventoryCostInBranch(List<double> price, List<double> unitCost) {
    double endingCost = 0;
    
    endingCost = beginningInventoryCostInBranch(unitCost) + totalPurchasedInBranch(unitCost) - totalCOGSInBranch(price);

    return endingCost;
  }
}
