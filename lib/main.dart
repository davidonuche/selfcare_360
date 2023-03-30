// Project Name: Self_Care_360 - Microsoft Learn Student Ambassadors Hackathon 2023
// Start Date: 25th Mar, 2023
// End Date: 30th Mar, 2023
// Android app live date: ----
// iOS app live date: ----
// Team Members: David O. x Ridwan A.

import 'package:flutter/material.dart';
import 'auth/onboarding_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medi Mart',
      home: OnboardingScreen(),
    );
  }
}
