import 'package:fl_chart/fl_chart.dart';
import 'indicator.dart';
import 'package:flutter/material.dart';

import '../../../../utils/styles/colours.dart';

class CustomerPredictionChart extends StatefulWidget {
  const CustomerPredictionChart({super.key});

  @override
  State<StatefulWidget> createState() => CustomerPredictionChartState();
}

class CustomerPredictionChartState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
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
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 60,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: AppColors.azukiRed,
                text: 'Male',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: AppColors.cucumber,
                text: 'Female',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),

              SizedBox(
                height: 40,
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 35.0 : 26.0;
      final radius = isTouched ? 100.0 : 80.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.azukiRed,
            value: 74,
            title: '74%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.placebo,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.cucumber,
            value: 26,
            title: '26%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.placebo,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}