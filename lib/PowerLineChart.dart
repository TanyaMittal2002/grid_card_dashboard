import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PowerLineChart extends StatelessWidget {
  const PowerLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color:  Colors.purple,
            barWidth: 3,
            spots: const [
              FlSpot(0, 1),
              FlSpot(1, 1.8),
              FlSpot(2, 1.4),
              FlSpot(3, 2.5),
              FlSpot(4, 2),
              FlSpot(5, 3),
            ],
          )
        ],
      ),
    );
  }
}