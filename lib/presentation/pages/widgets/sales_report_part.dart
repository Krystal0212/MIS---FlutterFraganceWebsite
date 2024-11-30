import 'package:eaudelux/presentation/pages/widgets/white_bar_chart.dart';
import 'package:flutter/material.dart';

import 'package:eaudelux/presentation/widgets/import_packages.dart';

// Real-Time Sales Report Page
class SalesReportPart extends StatelessWidget {
  const SalesReportPart({super.key});



  @override
  Widget build(BuildContext context) {
    return WhiteBarChart();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return const Padding(
  //     padding: EdgeInsets.all(16.0),
  //     child: Column(
  //       children: [
  //         Text(
  //           'Sales Report Overview',
  //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //         ),
  //         SizedBox(height: 20),
  //         // Sales data by branch
  //         Text(
  //           'Sales by Branch:',
  //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  //         ),
  //         SizedBox(height: 10),
  //         SalesPieChartPart(
  //           title: 'Branch Sales',
  //           data: [
  //             {'Branch 1': 5000},
  //             {'Branch 2': 7000},
  //             {'Branch 3': 6000},
  //           ],
  //         ),
  //         SizedBox(height: 20),
  //         // Sales data by product
  //         Text(
  //           'Sales by Product:',
  //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  //         ),
  //         SizedBox(height: 10),
  //         SalesPieChartPart(
  //           title: 'Product Sales',
  //           data: [
  //             {'Product A': 3000},
  //             {'Product B': 4500},
  //             {'Product C': 2500},
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

// A simple widget for displaying sales data (mocked here as a list)
class SalesPieChartPart extends StatelessWidget {
  final String title;
  final List<Map<String, double>> data;

  const SalesPieChartPart({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ...data.map((entry) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(entry.keys.first, style: const TextStyle(fontSize: 14)),
                Text('\$${entry.values.first.toString()}',
                    style: const TextStyle(fontSize: 14)),
              ],
            ),
          );
        }),
      ],
    );
  }
}