import 'package:flutter/material.dart';
import 'package:selfcare_360/utils/colors.dart';

class SymptomTrackerScreen extends StatefulWidget {
  @override
  _SymptomTrackerScreenState createState() => _SymptomTrackerScreenState();
}

class _SymptomTrackerScreenState extends State<SymptomTrackerScreen> {
 String _symptom = '';
  int _severity = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.klightgray,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
          child: Text('Symptom Tracker',
              style: TextStyle(color: AppColor.kdarkblue)),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please enter your symptoms:',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Symptom',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your symptom';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _symptom = value!;
                  },
                ),
                SizedBox(height: 16.0),
                Text(
                  'Severity:',
                  style: TextStyle(fontSize: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        setState(() {
                          if (_severity > 0) {
                            _severity--;
                          }
                        });
                      },
                    ),
                    Text(
                      '$_severity',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        setState(() {
                          if (_severity < 10) {
                            _severity++;
                          }
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColor.kwhite),
                  ),
                  child:
                      Text('Submit', style: TextStyle(color: AppColor.kgreen)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Save the symptom and severity data to a database or file.
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
