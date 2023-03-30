import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:selfcare_360/utils/colors.dart';

class TelemedicinePage extends StatefulWidget {
  @override
  _TelemedicinePageState createState() => _TelemedicinePageState();
}

class _TelemedicinePageState extends State<TelemedicinePage> {
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = TimeOfDay.now();
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  void _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.klightgray,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
            child: Text('Telemedicine',
                style: TextStyle(color: AppColor.kdarkblue))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Schedule an appointment:',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date:',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  TextButton(
                    onPressed: () => _selectDate(context),
                    child: Text(
                      DateFormat('EEEE, MMM d').format(_selectedDate),
                      style: TextStyle(fontSize: 16.0, color: AppColor.kgreen),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Time:',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  TextButton(
                    onPressed: () => _selectTime(context),
                    child: Text(
                      _selectedTime.format(context),
                      style: TextStyle(fontSize: 16.0, color: AppColor.kgreen),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColor.kwhite),
                ),
                onPressed: () {
                  // Code to schedule appointment goes here
                },
                child: Text(
                  'Schedule Appointment',
                  style: TextStyle(color: AppColor.kgreen),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
