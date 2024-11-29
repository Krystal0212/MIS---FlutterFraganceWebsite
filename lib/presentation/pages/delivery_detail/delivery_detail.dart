import 'package:flutter/material.dart';

class UpdateOrderStatusPage extends StatefulWidget {
  const UpdateOrderStatusPage({super.key});

  @override
  State<UpdateOrderStatusPage> createState() => _UpdateOrderStatusPageState();
}

class _UpdateOrderStatusPageState extends State<UpdateOrderStatusPage> {
  final _formKey = GlobalKey<FormState>();
  String? selectedOrder;
  String? orderStatus;
  final List<Order> orders = [
    Order(orderId: 'ORD001', perfumeName: 'Perfume A', status: 'Received'),
    Order(orderId: 'ORD002', perfumeName: 'Perfume B', status: 'In Transit'),
    Order(orderId: 'ORD003', perfumeName: 'Perfume C', status: 'Delivered'),
    // Add more sample orders here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Dropdown to select order
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select Order',
                border: OutlineInputBorder(),
              ),
              value: selectedOrder,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOrder = newValue;
                });
              },
              items: orders.map((Order order) {
                return DropdownMenuItem<String>(
                  value: order.orderId,
                  child: Text('${order.orderId} - ${order.perfumeName}'),
                );
              }).toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select an order';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            // Dropdown for order status
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select Status',
                border: OutlineInputBorder(),
              ),
              value: orderStatus,
              onChanged: (String? newValue) {
                setState(() {
                  orderStatus = newValue;
                });
              },
              items: ['Received', 'In Transit', 'Delivered']
                  .map((status) {
                return DropdownMenuItem<String>(
                  value: status,
                  child: Text(status),
                );
              }).toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select a status';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            // Submit button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Form is valid, handle the status update here
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Order $selectedOrder updated to $orderStatus')),
                    );
                    // Implement the logic to update the order status (save changes, etc.)
                  }
                },
                child: const Text('Update Status'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  final String orderId;
  final String perfumeName;
  String status;

  Order({
    required this.orderId,
    required this.perfumeName,
    required this.status,
  });
}
