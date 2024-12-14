import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/decoration.dart';

class AllExperience extends StatelessWidget {
  AllExperience({super.key});
  final List<Map<String, dynamic>> Experience = [
    {
      'image': 'assets/images (6).jpg',
    },
    {
      'image': 'assets/download (3).jpg',
    },
    {
      'image': 'assets/download (2).jpg',
    },
    {
      'image': 'assets/images (5).jpg',
    },
    {
      'image': 'assets/download (1).jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('All Experience'),
      ),
      body: ListView.builder(
        itemCount: Experience.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Experience[index]['image']),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 10,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WORKSHOPS & MORE",
                      textAlign: TextAlign.start,
                      style: boldTextStyle(fontSize: 16, color: white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '15+ Events',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: mediumTextStyle(fontSize: 12, color: white),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
