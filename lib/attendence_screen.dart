import 'package:flutter/material.dart';
import 'app_theme.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, double> attendance = {
      'Artificial Intelligence': 95.2,
      'Data Structures Lab': 98.0,
      'Java Programming': 95.1,
      'Python Programming': 73.6,
      'Dart Programming': 100.0,
      'Machine Learning Lab': 74.3,
    };

    return Container(
      decoration: AppTheme.gradientBackground,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Attendance Summary'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: attendance.entries.map((entry) {
            final color = entry.value < 75 ? Colors.red : Colors.green;
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              elevation: 3,
              child: ListTile(
                title: Text(
                  entry.key,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Text(
                  '${entry.value.toStringAsFixed(1)}%',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}