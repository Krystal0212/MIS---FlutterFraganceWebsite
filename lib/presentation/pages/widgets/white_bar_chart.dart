import 'package:eaudelux/utils/extensions/colour_extension.dart';
import 'package:eaudelux/utils/styles/colours.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WhiteBarChart extends StatefulWidget {
  WhiteBarChart({super.key});

  final Color barBackgroundColor =
      AppColors.white.darken().withOpacity(0.3);
  final Color barColor = AppColors.parakeetBlue;

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<WhiteBarChart> {
  // Toggle between branch or product sales data
  bool showBranchSales = true;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.graphic_eq),
                const SizedBox(
                  width: 32,
                ),
                Text(
                  showBranchSales ? 'Sales by Branch' : 'Sales by Product',
                  style: TextStyle(
                    color: widget.barColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: BarChart(
                salesData(), // Use data based on the toggle
              ),
            ),
            // Toggle Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showBranchSales = !showBranchSales;
                  });
                },
                child: Text(
                  showBranchSales ? 'Switch to Product Sales' : 'Switch to Branch Sales',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: widget.barColor,
          borderRadius: BorderRadius.zero,
          width: 22,
          borderSide: BorderSide(color: widget.barColor, width: 2.0),
        ),
      ],
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: AppColors.blackOak,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    // Adjust titles based on whether we show branches or products
    List<String> labels = showBranchSales
        ? ['Branch 1', 'Branch 2', 'Branch 3', 'Branch 4', 'Branch 5', 'Branch 6']
        : ['Chanel No. 5', 'Dior Sauvage', 'Gucci Bloom', 'Tom Ford', 'Yves Saint Laurent', 'Marc Jacobs'];

    Widget text = Text(
      labels[value.toInt()],
      style: style,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  BarChartData salesData() {
    return BarChartData(
      maxY: 10000.0,
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 30,
            showTitles: true,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showBranchSales
          ? [
              makeGroupData(0, 5000),  // Sales for Branch 1
              makeGroupData(1, 7000),  // Sales for Branch 2
              makeGroupData(2, 6000),  // Sales for Branch 3
              makeGroupData(3, 5500),  // Sales for Branch 4
              makeGroupData(4, 4500),  // Sales for Branch 5
              makeGroupData(5, 3000),  // Sales for Branch 6
            ]
          : [
              makeGroupData(0, 3000),  // Sales for Chanel No. 5
              makeGroupData(1, 4500),  // Sales for Dior Sauvage
              makeGroupData(2, 2500),  // Sales for Gucci Bloom
              makeGroupData(3, 7000),  // Sales for Tom Ford
              makeGroupData(4, 6000),  // Sales for Yves Saint Laurent
              makeGroupData(5, 3500),  // Sales for Marc Jacobs
            ],
      gridData: const FlGridData(show: false),
    );
  }
}
