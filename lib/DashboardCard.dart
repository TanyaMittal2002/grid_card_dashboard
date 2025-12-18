import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final String consumptions;
  final IconData icon;
  final Color color;
  const DashboardCard({super.key, required this.title,
    required this.value,
    required this.consumptions,
    required this.icon,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      child: Padding(padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.15),
              child: Icon(icon, color: color,),
            ),
            SizedBox(height: 10,),

            Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            SizedBox(height: 5,),
            Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("power consumption $consumptions", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[700]),),
          ],
        ),
),
    );
  }
}
