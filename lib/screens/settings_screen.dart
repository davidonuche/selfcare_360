import 'package:flutter/material.dart';
import 'package:selfcare_360/utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  int _fontSize = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.klightgray,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
            child:
                Text('Settings', style: TextStyle(color: AppColor.kdarkblue))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifications',
                style: TextStyle(fontSize: 20.0),
              ),
              SwitchListTile(
                activeColor: AppColor.kgreen,
                activeTrackColor: AppColor.klightgray,
                title: Text('Enable notifications'),
                value: _notificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text(
                'Appearance',
                style: TextStyle(fontSize: 20.0),
              ),
              SwitchListTile(
                activeColor: AppColor.kgreen,
                activeTrackColor: AppColor.klightgray,
                title: Text('Enable dark mode'),
                value: _darkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    _darkModeEnabled = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text(
                'Font Size',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Small',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Slider(
                    activeColor: AppColor.kgreen,
                    inactiveColor: AppColor.klightgray,
                    value: _fontSize.toDouble(),
                    min: 12.0,
                    max: 24.0,
                    divisions: 4,
                    onChanged: (double value) {
                      setState(() {
                        _fontSize = value.toInt();
                      });
                    },
                  ),
                  Text(
                    'Large',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
