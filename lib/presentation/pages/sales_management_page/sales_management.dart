import 'package:eaudelux/presentation/widgets/import_packages.dart';

class SalesManagerPage extends StatefulWidget {
  const SalesManagerPage({super.key});

  @override
  State<SalesManagerPage> createState() => _SalesManagerPageState();
}

class _SalesManagerPageState extends State<SalesManagerPage> {
  late double deviceWidth, deviceHeight;
  final String logoImagePath = 'images/svgs/logo.svg';
  final String logoSemanticsLabel = 'EauDeLux Logo';

  late Size appBarSize, deviceSize, bodySize;
  late String role;

  // Controllers for user input
  final TextEditingController promotionController = TextEditingController();
  final TextEditingController reportController = TextEditingController();

  // Sample data for delayed orders/defect reports
  List<Map<String, dynamic>> defectReports = [
    {
      "customerName": "John Doe",
      "report": "Received damaged product",
      "response": "",
    },
    {
      "customerName": "Jane Smith",
      "report": "Wrong item delivered",
      "response": "",
    },
  ];

  // List to hold promotions
  List<String> promotions = [
    "PROMO20: 20% off on all items",
    "FREESHIP: Free shipping for orders above \$50",
    "BOGO50: Buy one, get one 50% off",
  ];

  // Track the currently selected defect report
  Map<String, dynamic>? selectedReport;

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
  }

  // Method to add a promotion
  void _createPromotion(String promotionDetails) {
    setState(() {
      promotions.add(promotionDetails);
    });
    _showSnackBar('Promotion Created: $promotionDetails');
  }

  // Method to handle responding to a defect report
  void _respondToReport() {
    if (selectedReport != null && reportController.text.isNotEmpty) {
      setState(() {
        selectedReport!["response"] = reportController.text;
      });
      _showSnackBar('Response added to report');
      reportController.clear();
    } else {
      _showSnackBar('Please enter a valid response');
    }
  }

  // Method to show feedback messages
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  @override
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size(appBarSize.width, appBarSize.height),
      child: SalesAppBar(appBarSize: appBarSize, role: 'Sales Manager'),
    ),
    body: Center(
      child: Container(
        width: bodySize.width * 0.9, // Adjust width to allow horizontal layout
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: bodySize.width * 0.9,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card for Customer Defect Reports
              Expanded(
                flex: 1, // Adjust the space each card occupies
                child: Card(
                  color: AppColors.white,
                  elevation: 4.0,
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Customer Defect Reports',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: defectReports.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 2.0,
                              color: AppColors.white,
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: ListTile(
                                title: Text(defectReports[index]["customerName"]!),
                                subtitle: Text(defectReports[index]["report"]!),
                                onTap: () {
                                  setState(() {
                                    selectedReport = defectReports[index];
                                    reportController.text =
                                        selectedReport!["response"] ?? '';
                                  });
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        if (selectedReport != null)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer: ${selectedReport!["customerName"]}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Report: ${selectedReport!["report"]}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                controller: reportController,
                                decoration: const InputDecoration(
                                  labelText: 'Response',
                                  hintText: 'Provide a solution for the report',
                                ),
                                onSubmitted: (_) => _respondToReport(),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: _respondToReport,
                                child: const Text('Submit Response'),
                              ),
                              if (selectedReport!["response"]!.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Response: ${selectedReport!["response"]}',
                                    style: const TextStyle(color: Colors.green),
                                  ),
                                ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),

              // Card for Promotions
              Expanded(
                flex: 1, // Adjust the space each card occupies
                child: Card(
                  color: AppColors.white,
                  elevation: 4.0,
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Create Promotion',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: promotionController,
                          decoration: const InputDecoration(
                            labelText: 'Enter Promotion Details',
                            hintText: 'e.g., PROMO10: 10% off on all items',
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            final promotion = promotionController.text;
                            if (promotion.isNotEmpty) {
                              _createPromotion(promotion);
                              promotionController.clear();
                            } else {
                              _showSnackBar('Please enter valid promotion details');
                            }
                          },
                          child: const Text('Create Promotion'),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Current Promotions:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: promotions.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 2.0,
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: ListTile(
                                title: Text(promotions[index]),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


}
