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
    {"id": "oid1", "status": "Completed"},
    {"id": "oid2", "status": "Processing"},
    {"id": "oid3", "status": "Completed"},
    {"id": "oid4", "status": "Pending"},
    {"id": "oid5", "status": "Cancelled"},
    {"id": "oid6", "status": "Completed"},
    {"id": "oid7", "status": "Completed"},
  ];

  // Sample customer messages
  final List<Map<String, dynamic>> customerMessages = [
    {"fromCustomer": true, "message": "Hello, I need help with an issue on a product I purchased. I received my order, but the bottle of perfume is cracked."},
    {"fromCustomer": false, "message": "I'm really sorry to hear that! Could you please provide your order ID so I can look into this for you? Can you also describe the damage to the bottle? Is it leaking or just cracked?"},
    {"fromCustomer": true, "message": "It's oid1. The bottle is cracked, but it's not leaking. It just looks like it was damaged during shipping."},
    {"fromCustomer": false, "message": "Thank you for that. I'll check your order right away. I'll arrange for a replacement to be sent out immediately. You should receive a confirmation email soon."},
    {"fromCustomer": true, "message": "Thank you! I appreciate your help."},
    {"fromCustomer": false, "message": "You're welcome! We're sorry for the inconvenience, and we'll make sure this is resolved quickly."}
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
                            bool isPending = order["status"] == 'Pending';
                            bool isCompleted = order["status"] == 'Completed';
                            bool isNotCompletedOrCancelled = order["status"] != 'Completed' && order["status"] != 'Cancelled';
                            bool isProcessing = order["status"] == 'Processing';
                            bool isDefective = order["status"] == 'Defective';
                            return Card(
                              color: AppColors.white,
                              elevation: 2.0,
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: ListTile(
                                title: Text('Order ID: ${order["id"]}'),
                                subtitle: Text('Status: ${order["status"]}'),
                                trailing: (!isDefective) ? PopupMenuButton<String>(
                                  color: AppColors.white,
                                  onSelected: (value) {
                                    // Handle state updates here
                                    updateOrderState(order, value);
                                  },
                                  itemBuilder: (context) {

                                     return [
                                      if(isPending) const PopupMenuItem(
                                        value: 'Processing',
                                        child: Text('Mark as Processing'),
                                      ),
                                      if(isNotCompletedOrCancelled)const PopupMenuItem(
                                        value: 'Completed',
                                        child: Text('Mark as Completed'),
                                      ),
                                      if(!isPending)const PopupMenuItem(
                                        value: 'Defect',
                                        child: Text('Report problems'),
                                      ),
                                      if(isProcessing && !isCompleted && !isNotCompletedOrCancelled)const PopupMenuItem(
                                        value: 'Cancelled',
                                        child: Text('Cancel Order'),
                                      ),
                                    ];

                                  },
                                  child: const Icon(Icons.more_vert),
                                ):const Icon(Icons.error),
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
  void updateOrderState(Map<String, String> order, String newState) {
    int index = orders.indexOf(order);
    if(newState == 'Processing' || newState == 'Completed' || newState == "Cancelled"){
      setState(() {
        orders[index]["status"] = newState;
      });
    } else if (newState == 'Defect') {
      // Show dialog when "Report problems" is selected
      showDialog(
          context: context,
          builder: (BuildContext context) {
            TextEditingController _controller = TextEditingController();
            return AlertDialog(
              backgroundColor: AppColors.white,
              title: const Text('Report a Problem'),
              content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Please describe the issue with your order:'),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: deviceWidth*0.3,
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          hintText: 'Enter the problem here...',
                          border: OutlineInputBorder(),
                        ), // Allow multiple lines
                      ),
                    ),
                  ],),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      orders[index]["status"]="Defective";
                    });
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text('Report'),
                ),
              ],
            );
          },
      );
  }
  }

  // Method to send a support message
  void sendSupportMessage(String message) {
      Map<String, dynamic> response = {"fromCustomer": false, "message": message};

      setState(() {
        customerMessages.add(response);
      });
  }
}
