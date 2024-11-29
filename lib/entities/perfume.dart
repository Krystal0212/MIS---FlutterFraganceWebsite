// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:eaudelux/entities/branch.dart';
import 'package:eaudelux/entities/defect.dart';

enum SizeType { ml, oz }

extension SizeTypeExtension on SizeType {
  static String fromMap(SizeType sizeType) {
    switch (sizeType) {
      case SizeType.ml:
        return 'ml';
      case SizeType.oz:
        return 'oz';
      default:
        return 'ml';
    }
  }

  static SizeType toMap(String sizeType) {
    switch (sizeType) {
      case 'ml':
        return SizeType.ml;
      case 'oz':
        return SizeType.oz;
      default:
        return SizeType.ml;
    }
  }
}

class Perfume {
  String name;
  List<int> stock; // Current stock
  List<int> receiveFromBrand; // Units received during the period

  List<double> price; // Selling price per unit
  List<double> unitCost; // Cost per unit
  List<double> sizes;
  String sizeType;
  String description;
  String imageUrl;
  final Brand brand;

  List<Defect>? defects;

  Map<String, BranchPerfumeData> branchData;

  Perfume({
    required this.name,
    required this.stock,
    required this.receiveFromBrand,
    required this.price,
    required this.unitCost,
    required this.sizes,
    required this.sizeType,
    required this.description,
    required this.imageUrl,
    required this.brand,
    this.defects,
    required this.branchData,
  })  : assert(stock.length == unitCost.length,
            "Stock and UnitCost lengths mismatch"),
        assert(receiveFromBrand.length == stock.length,
            "Stock and ReceiveFromBrand lengths mismatch"),
        assert(branchData["A"]?.sold.length == stock.length,
            "BranchData lengths mismatch");

  int get totalDefectiveUnits {
    if (defects == null) return 0;
    return defects!.fold(0, (sum, defect) => sum + defect.defectiveUnits);
  }

  // Example: Get list of defected products with their reason
  List<String> get defectiveProducts {
    if (defects == null) return [];

    List<String> defectiveList = [];
    for (var defect in defects!) {
      if (defect.defectiveUnits > 0) {
        defectiveList.add(
            'Product: $name, Size: $sizes, Defect Reason: ${defect.defectReason}');
      }
    }
    return defectiveList;
  }

  bool get allDefectsResolved {
    if (defects == null) return true;
    return defects!.every((defect) => defect.defectResolved);
  }

  // Total units sold

  int get totalUnitSold => branchData.values
      .map((branch) => branch.totalUnitSoldInBranch)
      .toList()
      .reduce((a, b) => a + b);

  // Total units received
  int get totalUnitReceived => receiveFromBrand.reduce((a, b) => a + b);

  // Total units in stock
  int get totalUnitInStock => stock.reduce((a, b) => a + b);

  double get lowestPrice => price.reduce((a, b) => a < b ? a : b);

  // Beginning Inventory Cost (estimate as stock before receiving new units)
  double get beginningInventoryCost {
    double mainStockCost = 0;
    for (int i = 0; i < stock.length; i++) {
      mainStockCost += stock[i] * unitCost[i];
    }

    // Calculate branch stock cost
    double branchStockCost = 0;
    for (var branch in branchData.values) {
      branchStockCost += branch.beginningInventoryCostInBranch(unitCost);
    }

    // Combine both
    return mainStockCost + branchStockCost;
  }

  double mainPurchased() {
    double totalPurchased = 0;
    for (int i = 0; i < receiveFromBrand.length; i++) {
      totalPurchased += receiveFromBrand[i] * unitCost[i];
    }
    return totalPurchased;
  }

  // Ending Inventory Cost
  double get endingInventoryCost {
    int mainEndingUnits = 0;
    double mainStockEndingCost = 0;
    double mainCOGS = 0;
    double maintotalPurchased = mainPurchased();

    double endingUnitsCost = branchData.values.fold(
        0,
        (sum, branch) =>
            sum + branch.totalProductInventoryCostInBranch(price, unitCost));
    try {
      for (int i = 0; i < stock.length; i++) {
        
        mainEndingUnits += stock[i] + receiveFromBrand[i];
        mainStockEndingCost += mainEndingUnits * unitCost[i];
        mainCOGS += branchData.values
            .fold(0, (sum, branch) => sum + branch.totalCOGSInBranch(price));
      }
      mainStockEndingCost += endingUnitsCost;

      return mainStockEndingCost + maintotalPurchased - mainCOGS;
    } catch (e) {
      if (kDebugMode) {
        print('Error in caculating ending inventory cost: $e');
      }
      return 0;
    }
  }

  // Net Sales calculation
  double totalProductNetSales(
      {double returnAndAllowance = 0, double discount = 0}) {
    if (returnAndAllowance != 0 && discount != 0) {
      return totalProductCogs - returnAndAllowance - discount;
    } else {
      return totalProductCogs;
    }
  }

  // COGS calculation
  double get totalProductCogs {
    double mainCOGS = 0;

    for (int i = 0; i < stock.length; i++) {
      mainCOGS += branchData.values
          .fold(0, (sum, branch) => sum + branch.totalCOGSInBranch(price));
    }

    return mainCOGS;
  }

  Perfume copyWith({
    String? name,
    List<int>? stock,
    List<int>? receiveFromBrand,
    List<double>? price,
    List<double>? unitCost,
    List<double>? sizes,
    String? sizeType,
    String? description,
    String? imageUrl,
    Brand? brand,
    List<Defect>? defects,
    Map<String, BranchPerfumeData>? branchData,
  }) {
    return Perfume(
      name: name ?? this.name,
      stock: stock ?? this.stock,
      receiveFromBrand: receiveFromBrand ?? this.receiveFromBrand,
      price: price ?? this.price,
      unitCost: unitCost ?? this.unitCost,
      sizes: sizes ?? this.sizes,
      sizeType: sizeType ?? this.sizeType,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      brand: brand ?? this.brand,
      defects: defects ?? this.defects,
      branchData: branchData ?? this.branchData,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'stock': stock,
      'receiveFromBrand': receiveFromBrand,
      'price': price,
      'unitCost': unitCost,
      'sizes': sizes,
      'sizeType': sizeType,
      'description': description,
      'imageUrl': imageUrl,
      'brand': brand.toMap(),
      'defects': defects != null
          ? defects!.map((defect) => defect.toMap()).toList()
          : [],
      'branchData': branchData,
    };
  }

  factory Perfume.fromMap(Map<String, dynamic> map) {
    return Perfume(
      name: map['name'] as String,
      stock: List<int>.from(map['stock'] as List<int>),
      receiveFromBrand: List<int>.from(map['receiveFromBrand'] as List<int>),
      price: List<double>.from(map['price'] as List<double>),
      unitCost: List<double>.from(map['unitCost'] as List<double>),
      sizes: List<double>.from(map['sizes'] as List<double>),
      sizeType: SizeTypeExtension.fromMap(map['sizeType'] as SizeType),
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
      brand: Brand.fromMap(map['brand'] as Map<String, dynamic>),
      defects: map['defects'] != null
          ? List<Defect>.from(
              (map['defects'] as List<int>).map<Defect?>(
                (x) => Defect.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      branchData: Map<String, BranchPerfumeData>.from(
          map['branchData'] as Map<String, BranchPerfumeData>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Perfume.fromJson(String source) =>
      Perfume.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Perfume(name: $name, stock: $stock, receiveFromBrand: $receiveFromBrand, price: $price, unitCost: $unitCost, sizes: $sizes, sizeType: $sizeType, description: $description, imageUrl: $imageUrl, brand: $brand, defects: $defects, branchData: $branchData)';
  }

  @override
  bool operator ==(covariant Perfume other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        listEquals(other.stock, stock) &&
        listEquals(other.receiveFromBrand, receiveFromBrand) &&
        listEquals(other.price, price) &&
        listEquals(other.unitCost, unitCost) &&
        listEquals(other.sizes, sizes) &&
        other.sizeType == sizeType &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        other.brand == brand &&
        listEquals(other.defects, defects) &&
        mapEquals(other.branchData, branchData);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        stock.hashCode ^
        receiveFromBrand.hashCode ^
        price.hashCode ^
        unitCost.hashCode ^
        sizes.hashCode ^
        sizeType.hashCode ^
        description.hashCode ^
        imageUrl.hashCode ^
        brand.hashCode ^
        defects.hashCode ^
        branchData.hashCode;
  }
}

class Brand {
  final String name;

  Brand({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Brand.fromMap(Map<String, dynamic> map) {
    return Brand(
      name: map['name'] as String,
    );
  }
}
