import 'package:eaudelux/presentation/widgets/import_packages.dart';

class BarChartSection extends StatefulWidget {
  final List<Perfume> perfumes;

  const BarChartSection({super.key, required this.perfumes});

  final Color dark = AppColors.karimunBlue;
  final Color normal = AppColors.tianLanSky;
  final Color light = AppColors.icyLandscape;

  @override
  State<StatefulWidget> createState() => BarChartSectionState();
}

class BarChartSectionState extends State<BarChartSection> {
  late List<List<double>> barData;
  late List<Map<String, dynamic>> legendData;

  late List<String> bottomLabels;
  late List<List<int>> importedBarData;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    legendData = [
      {"color": widget.dark, "label": "Sold"},
      {"color": widget.normal, "label": "On Hand"},
      {"color": widget.light, "label": "To Come"},
    ];

    List<Perfume> topSellingPerfumes = getTopSellingPerfumes(widget.perfumes);

    bottomLabels = topSellingPerfumes.map((perfume) => perfume.name).toSet().toList();
    importedBarData = topSellingPerfumes.map((perfume) => [perfume.totalUnitSold, perfume.totalUnitInStock, perfume.totalUnitReceived]).toList();

    barData = transformToCumulative(importedBarData);
  }

  List<Perfume> getTopSellingPerfumes(List<Perfume> perfumes) {
  // Sort perfumes by the `sold` field in descending order
  perfumes.sort((a, b) => b.totalUnitSold.compareTo(a.totalUnitSold));
  
  // Take the top 5 perfumes
  return perfumes.take(5).toList();
}


  // Transform imported data into cumulative data
  List<List<double>> transformToCumulative(List<List<int>> rawData) {
    return rawData.map((data) {
      List<double> cumulative = [];
      double sum = 0;
      for (var value in data) {
        sum += value;
        cumulative.add(sum);
      }
      return cumulative;
    }).toList();
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text = (value.toInt() < bottomLabels.length)
        ? bottomLabels[value.toInt()]
        : '';
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) return Container();
    const style = TextStyle(fontSize: 10);
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(meta.formattedValue, style: style),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return List.generate(barData.length, (index) {
      final data = barData[index];
      return BarChartGroupData(
        x: index,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: data.last,
            rodStackItems: [
              BarChartRodStackItem(0, data[0], widget.dark),
              BarChartRodStackItem(data[0], data[1], widget.normal),
              BarChartRodStackItem(data[1], data[2], widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.inventoryTabBoxDecoration,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text('Top Selling Fragrances',
              style: AppTheme.blackMediumStyle.copyWith(fontSize: 20)),
          const Divider(thickness: 1, color: AppColors.trolleyGrey),
          const SizedBox(height: 10),
          ChartLegend(legendData: legendData),
          AspectRatio(
            aspectRatio: 1.66,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final barsSpace = 40.0 * constraints.maxWidth / 400;
                  final barsWidth = 25.0 * constraints.maxWidth / 400;
                  return BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.center,
                      barTouchData: BarTouchData(enabled: false),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                            getTitlesWidget: bottomTitles,
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: leftTitles,
                          ),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      gridData: FlGridData(
                        show: true,
                        checkToShowHorizontalLine: (value) => value % 10 == 0,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: AppColors.iris.withOpacity(0.1),
                          strokeWidth: 1,
                        ),
                        drawVerticalLine: false,
                      ),
                      borderData: FlBorderData(show: false),
                      groupsSpace: barsSpace,
                      barGroups: getData(barsWidth, barsSpace),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChartLegend extends StatelessWidget {
  final List<Map<String, dynamic>> legendData;

  const ChartLegend({super.key, required this.legendData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: legendData.map((item) {
        return Row(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: item["color"],
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              item["label"],
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(width: 15),
          ],
        );
      }).toList(),
    );
  }
}
