import 'package:flutter/material.dart';
import 'package:selfcare_360/utils/colors.dart';

class MentalHealthResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColor.klightgray,
        title: Center(
          child: Text('Mental Health Resources',
              style: TextStyle(color: AppColor.kdarkblue)),
        ),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for mental health resources',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.kgreen),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
              ),
            ),
          ),
          // Filters
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton<String>(
                hint: Text('Language'),
                items: <String>['English', 'Spanish', 'French', 'German']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
              DropdownButton<String>(
                hint: Text('Location'),
                items: <String>['Nigeria', 'Canada', 'UK', 'Kuwait']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
              DropdownButton<String>(
                hint: Text('Age Group'),
                items: <String>['Child', 'Teenager', 'Adult', 'Senior Citizen']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ],
          ),
          // Resources
          Expanded(
            child: ListView.builder(
              itemCount: 10, // replace with actual count
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('Resource Title'),
                    subtitle: Text('Resource Description'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Navigate to resource details page
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
