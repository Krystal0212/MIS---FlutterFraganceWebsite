import 'package:eaudelux/presentation/widgets/import_packages.dart';

class SalesStaffPage extends StatefulWidget {

  const SalesStaffPage({super.key});

  @override
  State<SalesStaffPage> createState() => _SalesStaffPageState();
}

class _SalesStaffPageState extends State<SalesStaffPage> {
  late double deviceWidth, deviceHeight;
  final String logoImagePath = 'images/svgs/logo.svg';
  final String logoSemanticsLabel = 'EauDeLux Logo';

  late Size appBarSize, deviceSize, bodySize;

  // Sample data for orders
  final List<Map<String, String>> orders = [
    {"id": "001", "status": "Pending"},
    {"id": "002", "status": "Processing"},
    {"id": "003", "status": "Completed"},
  ];

  // Sample customer messages
  final List<Map<String, dynamic>> customerMessages = [
    {"fromCustomer": true, "message": "I need help with my order"},
    {"fromCustomer": false, "message": "Sure, could you share your order ID?"},
    {"fromCustomer": true, "message": "It's 001"},
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
      preferredSize: Size(appBarSize.width, appBarSize.height),
      child: SalesAppBar(appBarSize: appBarSize, role: 'Sales Staff'),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Order Management Card
            Expanded(
              flex: 1,
              child: Card(
                color: AppColors.white,
                elevation: 4.0,
                margin: const EdgeInsets.only(right: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Order Management',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: orders.length,
                          itemBuilder: (context, index) {
                            final order = orders[index];
                            return Card(
                              color: AppColors.white,
                              elevation: 2.0,
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: ListTile(
                                title: Text('Order ID: ${order["id"]}'),
                                subtitle: Text('Status: ${order["status"]}'),
                                trailing: PopupMenuButton<String>(
                                  onSelected: (value) {
                                    // Handle state updates here
                                    updateOrderState(order["id"] ?? '', value);
                                  },
                                  itemBuilder: (context) {
                                    return [
                                      const PopupMenuItem(
                                        value: 'Processing',
                                        child: Text('Mark as Processing'),
                                      ),
                                      const PopupMenuItem(
                                        value: 'Completed',
                                        child: Text('Mark as Completed'),
                                      ),
                                      const PopupMenuItem(
                                        value: 'Cancelled',
                                        child: Text('Cancel Order'),
                                      ),
                                    ];
                                  },
                                  child: const Icon(Icons.more_vert),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Customer Support Card
            Expanded(
              flex: 1,
              child: Card(
                color: AppColors.white,
                elevation: 4.0,
                margin: const EdgeInsets.only(left: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Customer Support',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView(
                          children: List.generate(customerMessages.length, (index) {
                            final message = customerMessages[index];
                            return ListTile(
                              leading: Icon(
                                message['fromCustomer'] ? Icons.person : Icons.support_agent,
                              ),
                              title: Text(
                                message['message'],
                                style: TextStyle(
                                  color: message['fromCustomer']
                                      ? Colors.blue
                                      : Colors.green,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: 'Type your response...',
                          border: OutlineInputBorder(),
                        ),
                        onSubmitted: (text) {
                          // Handle sending a message
                          sendSupportMessage(text);
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
    );
  }

  // Method to update order state
  void updateOrderState(String orderId, String newState) {
    // Add logic to update order state
  }

  // Method to send a support message
  void sendSupportMessage(String message) {
    // Add logic to send a support message
  }
}
