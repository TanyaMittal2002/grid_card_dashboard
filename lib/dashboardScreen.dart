import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'DashboardCard.dart';
import 'PowerBarChart.dart';
import 'PowerLineChart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Dashboard",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              /// TOP CARDS
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.2,
                children: [
                  DashboardCard(
                    title: "Fans",
                    value: "27",
                    consumptions: "270",
                    icon: Icons.toys,
                    color: Colors.green,
                  ),
                  DashboardCard(
                    title: "Light",
                    value: "65",
                    consumptions: "876",
                    icon: Icons.lightbulb,
                    color: Colors.orange,
                  ),
                  DashboardCard(
                    title: "Refrigerator",
                    value: "4",
                    consumptions: "0",
                    icon: Icons.kitchen,
                    color: Colors.amber,
                  ),
                  DashboardCard(
                    title: "Air Conditioner",
                    value: "852",
                    consumptions: "65",
                    icon: Icons.ac_unit,
                    color: Colors.purple,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// LINE CHART
              _buildChartCard(
                title: "Average Power Consumption (kWh)",
                child: const PowerLineChart(),
              ),

              const SizedBox(height: 20),

              /// BAR CHART
              _buildChartCard(
                title: "Current Power Consumption (kWh)",
                child: const PowerBarChart(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChartCard({required String title, required Widget child}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            SizedBox(height: 200, child: child),
          ],
        ),
      ),
    );
  }
}
