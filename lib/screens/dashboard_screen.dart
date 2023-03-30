import 'package:flutter/material.dart';
import 'package:selfcare_360/utils/colors.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColor.klightgray,
        title: Center(
            child: Text(
          'Dashboard',
          style: TextStyle(color: AppColor.kdarkblue),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Text(
            'Welcome back, User!',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 16.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard('Total Steps', '12,345'),
                SizedBox(
                  width: 20,
                ),
                _buildStatCard('Calories Burned', '345'),
                SizedBox(
                  width: 20,
                ),
                _buildStatCard('Distance', '2.3'),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.grey[300],
              ),
              child: Center(
                child: Text(
                  'Your Activity Chart Goes Here',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: AppColor.klightgray,
      ),
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(color: AppColor.kdarkblue),
          ),
          SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: AppColor.kdarkblue,
            ),
          ),
        ],
      ),
    );
  }
}
