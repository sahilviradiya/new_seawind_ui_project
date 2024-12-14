import 'package:flutter/material.dart';
import 'package:seawind_ui_project/Widget/GlobalTextfeild.dart';

import '../../utils/color.dart';

class event extends StatefulWidget {
  const event({super.key});

  @override
  _eventState createState() => _eventState();
}

class _eventState extends State<event> {
  final List<Map<String, String>> countries = [
    {'name': 'India', 'flag': 'assets/india.png'},
    {'name': 'Canada', 'flag': 'assets/download.png'},
    {'name': 'Australia', 'flag': 'assets/download (1).png'},
    {'name': 'UK', 'flag': 'assets/download (2).png'},
    {'name': 'USA', 'flag': 'assets/download (3).png'},
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Select Country'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            globalTextFormField(
              prefixIcon: Icon(
                Icons.search,
                color: mainColour,
              ),
              hintText: 'Search Country',
              onChanged: (query) {
                setState(() {
                  searchQuery = query.toLowerCase();
                });
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: countries
                    .where((country) =>
                        country['name']!.toLowerCase().contains(searchQuery) ||
                        searchQuery.isEmpty)
                    .map((country) {
                  return Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                16.0), // Adjust the radius as needed
                            child: Image.asset(
                              country['flag']!,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          country['name']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
