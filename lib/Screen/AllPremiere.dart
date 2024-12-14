import 'package:flutter/material.dart';

import '../utils/decoration.dart';

class AllPremiere extends StatelessWidget {
  AllPremiere({super.key});

  final List<Map<String, dynamic>> PREMIERE = [
    {
      'image': 'assets/download (5).jpg',
    },
    {
      'image': 'assets/images (8).jpg',
    },
    {
      'image': 'assets/download (4).jpg',
    },
    {
      'image': 'assets/images (7).jpg',
    },
    {
      'image': 'assets/images (4).jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All PREMIE'),
      ),
      body: ListView.builder(
        itemCount: PREMIERE.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      image: DecorationImage(
                        image: AssetImage(PREMIERE[index]
                            ['image']), // Set the background image
                        fit: BoxFit.cover, // Adjust the image fit
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 25,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'BOOK NOW',
                        style: normalTextStyle(fontSize: 10),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Text(
                    'Let the beats of Garba fill your \nsoul with joy!',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: mediumTextStyle(fontSize: 8),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
