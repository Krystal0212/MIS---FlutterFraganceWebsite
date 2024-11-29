import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:eaudelux/presentation/widgets/restock_request.dart';
import 'package:eaudelux/services/request.dart';

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
  late String role;
  late List<String> brands, sizes;
  late List<RestockRequest> request;

  late double netSales; // Net Sales

  double totalCogs = 0; // Cost of Goods Sold
  double totalBeginningInventoryCost = 0; // Beginning Inventory Cost
  double totalEndingInventoryCost = 0; // Ending Inventory Cost

  late List<Perfume> perfumes;
  @override
  void initState() {
    super.initState();
    perfumes = DataSample.getPerfumes();
    brands = DataSample.getBrands();
    sizes = DataSample.getSizeTypes();
    role = DataSample.getRole(0);
    request = DataSample.getRestockRequests();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    appBarSize = Size(deviceWidth, deviceHeight * 0.1);
    bodySize = Size(deviceWidth, deviceHeight * 0.9);

    netSales = perfumes.fold(0.0, (sum, perfume) => sum + perfume.totalProductNetSales());

    for (var perfume in perfumes) {
      totalCogs += perfume.totalProductCogs;
      totalBeginningInventoryCost += perfume.beginningInventoryCost;
      totalEndingInventoryCost += perfume.endingInventoryCost;
    }

    double avgCost = caculateAVGInventory(
        totalBeginningInventoryCost, totalEndingInventoryCost);

    inventoryTurnOverRatio =
        calculateInventoryTurnoverRatio(totalCogs, avgCost);
    grossMarginROI = calculateGMROI(netSales, totalCogs, avgCost);
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
        ? double.parse(
            ((netSales - cogs) / averageInventoryCost).toStringAsFixed(2))
        : 0.0;

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(appBarSize.width, appBarSize.height),
          child: InventoryAppBar(
              appBarSize: appBarSize,
              brands: brands,
              sizeTypes: sizes,
              role: role)),
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
                      child: StockDataList(
                                                perfumes: perfumes,
                                                role: role,
                                              ),
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
                      flex: (role == 'Operation Manager') ? 1 : 3,
                      child: DashboardBox(
                        inventoryTurnOverRatio: inventoryTurnOverRatio,
                        grossMarginROI: grossMarginROI,
                        deviceWidth: deviceWidth,
                        role: role,
                        brands: brands,
                        sizeTypes: sizes,
                      )),
                  SizedBox(height: deviceHeight * 0.01),
                  Expanded(
                    flex: 9,
                    child: (role == 'Operation Manager')
                        ? RestockRequestList(
                            restockRequests: request,
                          )
                        : BarChartSection(
                            perfumes: perfumes,
                          ),
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

// ignore: must_be_immutable
class DashboardBox extends StatelessWidget {
  final List<String> brands, sizeTypes;
  final double inventoryTurnOverRatio, grossMarginROI, deviceWidth;
  final String role;
  late Widget dashboardBox;

  DashboardBox(
      {super.key,
      required this.inventoryTurnOverRatio,
      required this.grossMarginROI,
      required this.deviceWidth,
      required this.role,
      required this.brands,
      required this.sizeTypes});

  @override
  Widget build(BuildContext context) {
    switch (role) {
      case ('Operation Director'):
        dashboardBox = Row(
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
            )
          ],
        );
        break;
      case ('Operation Manager'):
        dashboardBox = Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: AppTheme.navigationLogoButtonStyle,
              onPressed: () {
                // Call the dialog function when the button is pressed
              },
              child: Text('Import Product', style: AppTheme.brandStyle),
            ),
            ElevatedButton(
              style: AppTheme.navigationLogoButtonStyle,
              onPressed: () {
                // Call the dialog function when the button is pressed
                AppRequest.showImportDialog(
                  context,
                  brands,
                  sizeTypes,
                );
              },
              child: Text('Check Request', style: AppTheme.brandStyle),
            ),
            ElevatedButton(
              style: AppTheme.navigationLogoButtonStyle,
              onPressed: () {
                // Call the dialog function when the button is pressed
                AppRequest.showImportDialog(
                  context,
                  brands,
                  sizeTypes,
                );
              },
              child: Text('Check Defect', style: AppTheme.brandStyle),
            ),
          ],
        );
        break;
      case ('Operation Staff'):
        dashboardBox = Row(
          children: [
            Expanded(
              flex: 1,
              child: InfoBox(
                value: '$inventoryTurnOverRatio%',
                label: 'Inventory turnover ratio',
              ),
            )
          ],
        );
        break;
      default:
        dashboardBox = Container();
    }
    return dashboardBox;
  }
}
