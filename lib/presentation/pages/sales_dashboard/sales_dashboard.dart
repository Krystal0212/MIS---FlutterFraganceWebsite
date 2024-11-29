import 'package:eaudelux/presentation/pages/widgets/customer_segmentation_part.dart';
import 'package:eaudelux/presentation/pages/widgets/full_pie_chart.dart';
import 'package:eaudelux/presentation/pages/widgets/sales_report_part.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';

class SalesDirectorPage extends StatefulWidget {
  const SalesDirectorPage({super.key});

  @override
  State<SalesDirectorPage> createState() => _SalesDirectorPageState();
}

class _SalesDirectorPageState extends State<SalesDirectorPage> {
  late double deviceWidth, deviceHeight;
  final String logoImagePath = 'images/svgs/logo.svg';
  final String logoSemanticsLabel = 'EauDeLux Logo';

  late Size appBarSize, deviceSize, bodySize;
  late String role;
  late List<PieChartDataModel> data; 

  @override
  void initState() {
    super.initState();
    role = DataSample.getSalesRole(1);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    appBarSize = Size(deviceWidth, deviceHeight * 0.1);
    bodySize = Size(deviceWidth, deviceHeight * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(appBarSize.width, appBarSize.height),
          child: SalesAppBar(appBarSize: appBarSize, role: role)),
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: SalesReportPart(),
          ),
          VerticalDivider(
      thickness: 1,  // You can adjust the thickness
      color: AppColors.trolleyGrey.withOpacity(0.5),  // Color of the divider
      width: 20,  // Space between the divider and content
    ),
          const Expanded(flex: 1, child: CustomerSegmentationPart()),
        ],
      ),
    );
  }
}

// A simple widget for displaying sales data (mocked here as a list)
