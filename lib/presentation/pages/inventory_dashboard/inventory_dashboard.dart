import 'package:eaudelux/presentation/widgets/import_packages.dart';

class InventoryDashboard extends StatefulWidget {
  const InventoryDashboard({super.key});

  @override
  State<InventoryDashboard> createState() => _InventoryDashboardState();
}

class _InventoryDashboardState extends State<InventoryDashboard> {
  late double deviceWidth, deviceHeight;
  final String logoImagePath = 'images/svgs/logo.svg';
  final String logoSemanticsLabel = 'EauDeLux Logo';

  late Size appBarSize, deviceSize, bodySize;
  late double inventoryTurnOverRatio, grossMarginROI;

  double netSales = 16000; // Net Sales
  double cogs = 2000; // Cost of Goods Sold
  double beginningInventoryCost = 1000; // Beginning Inventory Cost
  double endingInventoryCost = 3000; // Ending Inventory Cost

  final List<List<double>> importedBarData = [
    [48, 75, 10], // x1, x2, x3
    [45, 20, 37],
    [44, 40, 28],
    [41, 55, 29],
    [30, 50, 28],
    [50, 55, 42],
  ];

  List<Perfume> perfumes = [
    Perfume(
        name: 'Dior Sauvage',
        sold: 44,
        stock: 20,
        receive: 28,
        price: 85.0,
        brand: Brand(name: 'Dior')),
    Perfume(
        name: 'Dior Homme',
        sold: 41,
        stock: 55,
        receive: 29,
        price: 95.0,
        brand: Brand(name: 'Dior')),
    Perfume(
        name: 'Gucci Bloom',
        sold: 30,
        stock: 50,
        receive: 28,
        price: 75.0,
        brand: Brand(name: 'Gucci')),
    Perfume(
        name: 'Gucci Guilty',
        sold: 50,
        stock: 55,
        receive: 42,
        price: 80.0,
        brand: Brand(name: 'Gucci')),
    Perfume(
        name: 'Tom Ford Black Orchid',
        sold: 0,
        stock: 6,
        receive: 0,
        price: 135.0,
        brand: Brand(name: 'Tom Ford')),
    Perfume(
        name: 'Tom Ford Oud Wood',
        sold: 0,
        stock: 9,
        receive: 0,
        price: 110.0,
        brand: Brand(name: 'Tom Ford')),
    Perfume(
        name: 'Armani Code',
        sold: 0,
        stock: 14,
        receive: 0,
        price: 85.0,
        brand: Brand(name: 'Armani')),
    Perfume(
        name: 'Armani Si',
        sold: 0,
        stock: 10,
        receive: 0,
        price: 95.0,
        brand: Brand(name: 'Armani')),
    Perfume(
        name: 'Yves Saint Laurent Black Opium',
        sold: 0,
        stock: 20,
        receive: 0,
        price: 100.0,
        brand: Brand(name: 'Yves Saint Laurent')),
    Perfume(
        name: 'Yves Saint Laurent Libre',
        sold: 0,
        stock: 11,
        receive: 0,
        price: 120.0,
        brand: Brand(name: 'Yves Saint Laurent')),
    Perfume(
        name: 'Hermès Terre d’Hermès',
        sold: 0,
        stock: 5,
        receive: 0,
        price: 125.0,
        brand: Brand(name: 'Hermès')),
    Perfume(
        name: 'Hermès Voyage d’Hermès',
        sold: 0,
        stock: 8,
        receive: 0,
        price: 115.0,
        brand: Brand(name: 'Hermès')),
    Perfume(
        name: 'Versace Eros',
        sold: 0,
        stock: 16,
        receive: 0,
        price: 90.0,
        brand: Brand(name: 'Versace')),
    Perfume(
        name: 'Versace Bright Crystal',
        sold: 0,
        stock: 13,
        receive: 0,
        price: 75.0,
        brand: Brand(name: 'Versace')),
    Perfume(
        name: 'Prada Candy',
        sold: 0,
        stock: 10,
        receive: 0,
        price: 70.0,
        brand: Brand(name: 'Prada')),
    Perfume(
        name: 'Prada L’Homme',
        sold: 0,
        stock: 12,
        receive: 0,
        price: 95.0,
        brand: Brand(name: 'Prada')),
    Perfume(
        name: 'Burberry Her',
        sold: 0,
        stock: 9,
        receive: 0,
        price: 85.0,
        brand: Brand(name: 'Burberry')),
    Perfume(
        name: 'Burberry Brit',
        sold: 0,
        stock: 7,
        receive: 0,
        price: 80.0,
        brand: Brand(name: 'Burberry')),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    appBarSize = Size(deviceWidth, deviceHeight * 0.1);
    bodySize = Size(deviceWidth, deviceHeight * 0.9);

    // inventoryTurnOverRatio = 0.8;
    // grossMarginROI = 32000.0;

    double avgInventoryCost =
        caculateAVGInventory(beginningInventoryCost, endingInventoryCost);
    inventoryTurnOverRatio =
        calculateInventoryTurnoverRatio(cogs, avgInventoryCost);
    grossMarginROI = calculateGMROI(netSales, cogs, avgInventoryCost);
  }

  double caculateAVGInventory(
          double beginningInventoryCost, double endingInventoryCost) =>
      (beginningInventoryCost + endingInventoryCost) / 2;

  double calculateInventoryTurnoverRatio(double cogs, double avgInventory) =>
      avgInventory > 0
          ? double.parse((cogs / avgInventory).toStringAsFixed(2))
          : 0.0;

  double calculateGMROI(
      double netSales, double cogs, double averageInventoryCost) {
    // Calculate Gross Margin/Average Inventory and return GMROI
    double result = (averageInventoryCost > 0)
        ? ((netSales - cogs) / averageInventoryCost).roundToDouble()
        : 0.0;

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(appBarSize.width, appBarSize.height),
          child: InventoryAppBar(appBarSize: appBarSize)),
      body: Container(
        height: bodySize.height,
        padding: AppPaddings.defaultPadding,
        color: AppColors.tropicalBreeze,
        child: Row(
          children: [
            // Left section (Board of Stock Availability - 6 parts)
            Expanded(
              flex: 11,
              child: Container(
                padding: AppPaddings.defaultPadding,
                decoration: AppTheme.inventoryTabBoxDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Example for a stock availability board
                    Text(
                      'Stock Availability',
                      style: AppTheme.blackInfoStyle,
                    ),

                    SizedBox(height: deviceHeight * 0.01),

                    Container(
                      height: bodySize.height * 0.8,
                      decoration: AppTheme.squarebBoxDecoration,
                      child: Center(
                          child: StockDataList(
                        perfumes: perfumes,
                      )),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(width: deviceWidth * 0.01),

            // Right section (Chart for Top Selling Items - 4 parts)
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InfoBox(
                              value: '$inventoryTurnOverRatio%',
                              label: 'Inventory turnover ratio',
                            ),
                          ),
                          SizedBox(width: deviceWidth * 0.01),
                          Expanded(
                            flex: 1,
                            child: InfoBox(
                              value: '\$$grossMarginROI K',
                              label: 'Gross Margin ROI',
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: deviceHeight * 0.01),
                  Expanded(
                    flex: 9,
                    child: BarChartSection(perfumes: perfumes,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String value;
  final String label;

  const InfoBox({required this.value, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.inventoryTabBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: AppTheme.blackInfoStyle.copyWith(fontSize: 30)),
          Text(label, style: AppTheme.blackInfoStyle),
        ],
      ),
    );
  }
}
