import 'package:flutter/material.dart';
import 'package:selfcare_360/utils/colors.dart';

class HealthTrackingScreeen extends StatefulWidget {
  @override
  _HealthTrackingScreeenState createState() => _HealthTrackingScreeenState();
}

class _HealthTrackingScreeenState extends State<HealthTrackingScreeen> {
  int _waterIntake = 0;
  int _caloriesIntake = 0;
  int _exerciseDuration = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.klightgray,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
            child: Text('Health Tracking',
                style: TextStyle(color: AppColor.kdarkblue))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your daily health details:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Water Intake:',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '$_waterIntake cups',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Slider(
              activeColor: AppColor.kgreen,
              inactiveColor: AppColor.klightblue,
              value: _waterIntake.toDouble(),
              min: 0,
              max: 10,
              divisions: 10,
              label: _waterIntake.toString(),
              onChanged: (double value) {
                setState(() {
                  _waterIntake = value.round();
                });
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Calories Intake:',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '$_caloriesIntake cals',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Slider(
              activeColor: AppColor.kgreen,
              inactiveColor: AppColor.klightblue,
              value: _caloriesIntake.toDouble(),
              min: 0,
              max: 5000,
              divisions: 1000,
              label: _caloriesIntake.toString(),
              onChanged: (double value) {
                setState(() {
                  _caloriesIntake = value.round();
                });
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exercise Duration:',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '$_exerciseDuration mins',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Slider(
              activeColor: AppColor.kgreen,
              inactiveColor: AppColor.klightblue,
              value: _exerciseDuration.toDouble(),
              min: 0,
              max: 120,
              divisions: 12,
              label: _exerciseDuration.toString(),
              onChanged: (double value) {
                setState(() {
                  _exerciseDuration = value.round();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
