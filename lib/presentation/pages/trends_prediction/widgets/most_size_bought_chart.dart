import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MostBoughtSizesChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: BarChart(
        BarChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return Text('0.8 Oz');
                    case 1:
                      return Text('1.6 Oz');
                    case 2:
                      return Text('2.4 Oz');
                    case 3:
                      return Text('3.2 Oz');
                    case 4:
                      return Text('4.0 Oz');
                    case 5:
                      return Text('4.8 Oz');
                    case 6:
                      return Text('5.6 Oz');
                    default:
                      return Text('');
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: 10,
                getTitlesWidget: (value, meta) => Text(value.toInt().toString()),
              ),
            ),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  toY: 20,
                  width: 20,
                  color: AppColors.erieBlack,
                  gradient: LinearGradient(colors: [AppColors.pelati, AppColors.sangoRed]),
                ),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  toY: 33,
                  width: 20,
                  color: AppColors.erieBlack,
                  gradient: LinearGradient(colors: [AppColors.pelati, AppColors.sangoRed]),
                ),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                  toY: 56,
                  width: 20,
                  color: AppColors.erieBlack,
                  gradient: LinearGradient(colors: [AppColors.pelati, AppColors.sangoRed]),
                ),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(
                  toY: 89,
                  width: 20,
                  color: AppColors.erieBlack,
                  gradient: LinearGradient(colors: [AppColors.pelati, AppColors.sangoRed]),
                ),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(
                  toY: 142,
                  width: 20,
                  color: AppColors.erieBlack,
                  gradient: LinearGradient(colors: [AppColors.pelati, AppColors.sangoRed]),
                ),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(
                  toY: 42,
                  width: 20,
                  color: AppColors.erieBlack,
                  gradient: LinearGradient(colors: [AppColors.pelati, AppColors.sangoRed]),
                ),
              ],
            ),
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(
                  toY: 16,
                  width: 20,
                  color: AppColors.erieBlack,
                  gradient: LinearGradient(colors: [AppColors.pelati, AppColors.sangoRed]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
