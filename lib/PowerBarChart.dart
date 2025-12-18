import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PowerBarChart extends StatelessWidget {
  const PowerBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        barGroups: List.generate(
          8,
              (index) => BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: (index + 1) * 2,
                color: Colors.teal,
                width: 14,
                borderRadius: BorderRadius.circular(6),
              )
            ],
          ),
        ),
      ),
    );
  }
}