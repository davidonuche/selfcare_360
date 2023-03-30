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
