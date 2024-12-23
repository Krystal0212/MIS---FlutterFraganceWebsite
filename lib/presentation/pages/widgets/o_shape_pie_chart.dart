import 'package:eaudelux/presentation/widgets/import_packages.dart';

class OShapePieChart extends StatefulWidget {
  const OShapePieChart({super.key, required this.ageGroupData});
  final Map<String, double> ageGroupData;

  @override
  State<OShapePieChart> createState() => OShapePieChartState();
}

class OShapePieChartState extends State<OShapePieChart> {
  int touchedIndex = -1;  // Store index of the touched section

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 430,
      child: Column(  // Column layout to place the legend above the chart
        children: <Widget>[
          ChartLegend(ageGroupData: widget.ageGroupData),  // Legend positioned above the chart
          const SizedBox(height: 20),  // Space between legend and chart
          AspectRatio(
            aspectRatio: 1,  // Maintain square aspect ratio for the pie chart
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;  // Reset if no section is touched
                      } else {
                        touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                      }
                    });
                  },
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: showingSections(widget.ageGroupData),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections(Map<String, double> ageGroupData) {
    List<PieChartSectionData> sections = [];
    ageGroupData.forEach((key, value) {
      final isTouched = ageGroupData.keys.toList().indexOf(key) == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;  // Adjust font size when touched
      final radius = isTouched ? 120.0 : 100.0;  // Adjust radius when touched

      sections.add(PieChartSectionData(
        color: _getAgeGroupColor(key),
        value: value,
        title: '${value.toStringAsFixed(1)}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ));
    });
    return sections;
  }

  Color _getAgeGroupColor(String ageGroup) {
    switch (ageGroup) {
      case '18-24':
        return AppColors.karimunBlue;
      case '25-34':
        return AppColors.brightLightGreen;
      case '34-44':
        return AppColors.circus;
      case '45+':
        return AppColors.sangoRed;
      default:
        return AppColors.goshawkGrey;
    }
  }
}

class ChartLegend extends StatelessWidget {
  final Map<String, double> ageGroupData;

  const ChartLegend({super.key, required this.ageGroupData});

  @override
  Widget build(BuildContext context) {
    // Convert Map to List of Entries
    List<MapEntry<String, double>> entries = ageGroupData.entries.toList();
    
    // Split the entries into two halves
    int middleIndex = (entries.length / 2).ceil(); // Find the middle index for splitting
    List<MapEntry<String, double>> firstHalf = entries.sublist(0, middleIndex);
    List<MapEntry<String, double>> secondHalf = entries.sublist(middleIndex);

    return Column(  // Use Column layout to split into two rows
      children: [
        // Top Row (First Half)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: firstHalf.map((entry) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),  // Horizontal spacing
              child: Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: _getAgeGroupColor(entry.key),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Group ${entry.key}: ${entry.value}%',  // Display age group and percentage
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 10),  // Space between top and bottom rows
        // Bottom Row (Second Half)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: secondHalf.map((entry) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),  // Horizontal spacing
              child: Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: _getAgeGroupColor(entry.key),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Group ${entry.key}: ${entry.value}%',  // Display age group and percentage
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Color _getAgeGroupColor(String ageGroup) {
    switch (ageGroup) {
      case '18-24':
        return AppColors.karimunBlue;
      case '25-34':
        return AppColors.brightLightGreen;
      case '34-44':
        return AppColors.circus;
      case '45+':
        return AppColors.sangoRed;
      default:
        return AppColors.goshawkGrey;
    }
  }
}
