import 'package:eaudelux/presentation/widgets/import_packages.dart';

class DataSample {
  static List<Perfume> perfumes = [
    Perfume(
        name: 'Dior Sauvage',
        sold: 44,
        stock: 20, // Unchanged
        receive: 28,
        price: 95.0, // Adjusted to increase margin
        brand: Brand(name: 'Dior'),
        unitCost: 40.0),
    Perfume(
        name: 'Dior Homme',
        sold: 41,
        stock: 55,
        receive: 29,
        price: 105.0, // Adjusted to increase margin
        brand: Brand(name: 'Dior'),
        unitCost: 50.0),
    Perfume(
        name: 'Gucci Bloom',
        sold: 30,
        stock: 50,
        receive: 28,
        price: 80.0, // Adjusted
        brand: Brand(name: 'Gucci'),
        unitCost: 40.0),
    Perfume(
        name: 'Gucci Guilty',
        sold: 50,
        stock: 55,
        receive: 42,
        price: 90.0, // Adjusted
        brand: Brand(name: 'Gucci'),
        unitCost: 50.0),
    Perfume(
        name: 'Tom Ford Black Orchid',
        sold: 20,
        stock: 26,
        receive: 16,
        price: 145.0, // Adjusted
        brand: Brand(name: 'Tom Ford'),
        unitCost: 75.0),
    Perfume(
        name: 'Tom Ford Oud Wood',
        sold: 0,
        stock: 10, // Adjusted
        receive: 5, // Adjusted
        price: 120.0, // Adjusted
        brand: Brand(name: 'Tom Ford'),
        unitCost: 80.0),
    Perfume(
        name: 'Armani Code',
        sold: 0,
        stock: 14, // Unchanged
        receive: 0,
        price: 95.0, // Adjusted
        brand: Brand(name: 'Armani'),
        unitCost: 60.0),
    Perfume(
        name: 'Armani Si',
        sold: 0,
        stock: 12, // Adjusted
        receive: 2, // Adjusted
        price: 110.0, // Adjusted
        brand: Brand(name: 'Armani'),
        unitCost: 65.0),
    Perfume(
        name: 'Yves Saint Laurent Black Opium',
        sold: 0,
        stock: 20,
        receive: 0,
        price: 110.0, // Adjusted
        brand: Brand(name: 'Yves Saint Laurent'),
        unitCost: 70.0),
    Perfume(
        name: 'Yves Saint Laurent Libre',
        sold: 0,
        stock: 12, // Adjusted
        receive: 1, // Adjusted
        price: 130.0, // Adjusted
        brand: Brand(name: 'Yves Saint Laurent'),
        unitCost: 80.0),
    Perfume(
        name: 'Hermès Terre d’Hermès',
        sold: 0,
        stock: 7, // Adjusted
        receive: 2, // Adjusted
        price: 135.0, // Adjusted
        brand: Brand(name: 'Hermès'),
        unitCost: 90.0),
    Perfume(
        name: 'Hermès Voyage d’Hermès',
        sold: 0,
        stock: 9, // Adjusted
        receive: 1, // Adjusted
        price: 125.0, // Adjusted
        brand: Brand(name: 'Hermès'),
        unitCost: 35.0),
    Perfume(
        name: 'Versace Eros',
        sold: 0,
        stock: 16, // Unchanged
        receive: 0,
        price: 100.0, // Adjusted
        brand: Brand(name: 'Versace'),
        unitCost: 50.0),
    Perfume(
        name: 'Versace Bright Crystal',
        sold: 0,
        stock: 13, // Unchanged
        receive: 0,
        price: 85.0, // Adjusted
        brand: Brand(name: 'Versace'),
        unitCost: 45.0),
    Perfume(
        name: 'Prada Candy',
        sold: 0,
        stock: 10, // Unchanged
        receive: 0,
        price: 80.0, // Adjusted
        brand: Brand(name: 'Prada'),
        unitCost: 40.0),
    Perfume(
        name: 'Prada L’Homme',
        sold: 0,
        stock: 12, // Unchanged
        receive: 0,
        price: 105.0, // Adjusted
        brand: Brand(name: 'Prada'),
        unitCost: 50.0),
    Perfume(
        name: 'Burberry Her',
        sold: 0,
        stock: 9, // Unchanged
        receive: 0,
        price: 95.0, // Adjusted
        brand: Brand(name: 'Burberry'),
        unitCost: 45.0),
    Perfume(
        name: 'Burberry Brit',
        sold: 0,
        stock: 7, // Unchanged
        receive: 0,
        price: 90.0, // Adjusted
        brand: Brand(name: 'Burberry'),
        unitCost: 40.0),
  ];

  static List<Perfume> getPerfumes() {
    return perfumes;
  }
}
