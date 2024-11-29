import 'package:eaudelux/utils/styles/colours.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class FullPieChart extends StatefulWidget {
  final List<PieChartDataModel> data;

  const FullPieChart({super.key, required this.data});

  @override
  State<StatefulWidget> createState() => FullPieChartState();
}

class FullPieChartState extends State<FullPieChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, // Increased height to accommodate legend
      width: 350, // Increased width to accommodate legend
      child: Column(
        children: [

          const SizedBox(height: 10),

          // Legend
          ChartLegend(data: widget.data), // Add the legend here

          const SizedBox(height: 30),

          // Pie chart
          SizedBox(
            height: 400,
            width: 400,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex =
                          pieTouchResponse.touchedSection!.touchedSectionIndex;
                    });
                  },
                ),
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 0,
                sections: showingSections(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(widget.data.length, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 40.0 : 30.0;
      final radius = isTouched ? 165.0 : 137.0;
      final widgetSize = isTouched ? 100.0 : 75.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 5)];

      final item = widget.data[i];

      return PieChartSectionData(
        color: item.color,
        value: item.value,
        title: '${item.value}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
          shadows: shadows,
        ),
        badgeWidget: _Badge(
          item.iconPath,
          size: widgetSize,
          borderColor: AppColors.blackOak,
        ),
        badgePositionPercentageOffset: .98,
      );
    });
  }
}

class _Badge extends StatelessWidget {
  final String svgAsset;
  final double size;
  final Color borderColor;

  const _Badge(this.svgAsset, {required this.size, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: Image.asset(
          svgAsset, // Updated to use PNG
          fit: BoxFit.cover, // Ensure the icon fits within the circle
        ),
      ),
    );
  }
}

// Data model to pass data externally to the chart
class PieChartDataModel {
  final double value;
  final Color color;
  final String title;
  final String iconPath;

  PieChartDataModel({
    required this.value,
    required this.color,
    required this.title,
    required this.iconPath,
  });
}

// Chart Legend Widget
class ChartLegend extends StatelessWidget {
  final List<PieChartDataModel> data;

  const ChartLegend({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: data.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              // Color box
              Container(
                width: 20,
                height: 20,
                color: item.color,
              ),
              const SizedBox(width: 8),
              // Title and value
              Text(
                '${item.title}: ${item.value}%',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
