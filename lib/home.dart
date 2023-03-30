import 'package:flutter/material.dart';
import 'package:selfcare_360/screens/health_screen.dart';
import 'package:selfcare_360/screens/settings_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/health_tracking_screen.dart';
import 'screens/symptom_tracker_screen.dart';
import 'screens/telemedicine_Page.dart';
import 'utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            DashboardScreen(),
            HealthTrackingScreeen(),
            SymptomTrackerScreen(),
            TelemedicinePage(),
            MentalHealthResourcesPage(),
            SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.klightgray,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.art_track),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.track_changes_rounded),
            label: 'Symptom',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.medical_services),
            label: 'Medicine',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.health_and_safety),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: AppColor.kdarkblue,
      ),
    );
  }
}
