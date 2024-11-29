import 'package:eaudelux/presentation/pages/inventory_dashboard/widgets/restock_request.dart';
// ignore: unnecessary_import
import 'package:flutter/material.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';

class DeliveryBox extends StatefulWidget {
  const DeliveryBox({super.key});

  @override
  State<DeliveryBox> createState() => _DeliveryBoxState();
}

class _DeliveryBoxState extends State<DeliveryBox> {
  final _formKey = GlobalKey<FormState>();
  String? selectedRequest;
  int perfumeQuantity = 0;
  final List<RestockRequest> requests = [
    RestockRequest(perfumeName: 'Perfume A', requestedQuantity: 10, status: 'Processing', branch: 'Branch A'),
    RestockRequest(perfumeName: 'Perfume B', requestedQuantity: 20, status: 'Processing', branch: 'Branch B'),
    // Add more sample requests here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Delivery Request', style: AppTheme.blackInfoStyle),
          const SizedBox(height: 20),

          // Dropdown to select request
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Select Request',
              border: OutlineInputBorder(),
            ),
            value: selectedRequest,
            onChanged: (String? newValue) {
              setState(() {
                selectedRequest = newValue;
              });
            },
            items: requests
                .where((request) => request.status == 'Processing')
                .map((RestockRequest request) {
              return DropdownMenuItem<String>(
                value: request.perfumeName,
                child: Text('${request.perfumeName} - ${request.requestedQuantity} units'),
              );
            }).toList(),
            validator: (value) {
              if (value == null) {
                return 'Please select a request';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),

          // Text Field for quantity to send
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Quantity to Send',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                perfumeQuantity = int.tryParse(value) ?? 0;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a quantity';
              }
              if (int.tryParse(value) == null || int.tryParse(value)! <= 0) {
                return 'Please enter a valid quantity';
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
                  // Form is valid, handle the request submission here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Sending $perfumeQuantity units to branch')),
                  );
                  // Implement the logic to send data (update status, etc.)
                }
              },
              child: const Text('Submit Delivery'),
            ),
          ),
        ],
      ),
    );
  }
}
