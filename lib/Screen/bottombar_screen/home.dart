import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:seawind_ui_project/Screen/AllExperience.dart';
import 'package:seawind_ui_project/Screen/AllPremiere.dart';
import 'package:seawind_ui_project/Widget/mydrawer.dart';
import 'package:seawind_ui_project/utils/color.dart';
import 'package:seawind_ui_project/utils/decoration.dart';

import '../../Widget/GlobalTextfeild.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String selectedCity = 'Mumbai'; // Default selected city
  final List<String> cities = ['Mumbai', 'Delhi', 'Chennai', 'Kolkata'];

  // Data for horizontal ListView
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.child_care_rounded, 'text': 'Children'},
    {'icon': Icons.food_bank, 'text': 'Food'},
    {'icon': Icons.local_movies, 'text': 'Movies'},
    {'icon': Icons.sports_soccer, 'text': 'Sports'},
    {'icon': Icons.music_note, 'text': 'Music'},
  ];
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
        endDrawer: MyDrawer(),
        appBar: AppBar(
          actionsIconTheme: IconThemeData(color: white),
          backgroundColor: const Color.fromARGB(222, 233, 30, 98),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(186, 233, 30, 98),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      const BoxShadow(color: Colors.grey, blurRadius: 2)
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(222, 233, 30, 98),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Flexible(
                  child: Text(
                    'Book My\nEvent',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width > 600
                    ? 55.0
                    : 20.0), // Adjust padding based on screen width
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      "Current Location",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton<String>(
                          value: selectedCity,
                          icon: const Icon(Icons.arrow_drop_down,
                              color: Colors.white),
                          dropdownColor: const Color.fromARGB(222, 233, 30, 98),
                          underline: Container(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCity = newValue!;
                            });
                          },
                          items: cities
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/india.png',
                          width: MediaQuery.of(context).size.width > 600
                              ? 20
                              : 15, // Adjust image size based on screen width
                          height: MediaQuery.of(context).size.width > 600
                              ? 20
                              : 15, // Adjust image size based on screen width
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width > 600
                      ? 10
                      : 5, // Adjust spacing based on screen width
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(222, 233, 30, 98),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(31),
                        bottomRight: Radius.circular(31))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: globalTextFormField(
                              containercolor: white,
                              prefixIcon: Icon(
                                Icons.search,
                                color: mainColour,
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(117, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'ListYourShow',
                              style:
                                  normalTextStyle(fontSize: 10, color: white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(117, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5),
                            child: Text(
                              'Offers',
                              style:
                                  normalTextStyle(fontSize: 10, color: white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 35, // Adjust height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              width: 85,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      items[index]['icon'],
                                      color: mainColour,
                                    ),
                                    Text(
                                      items[index]['text'],
                                      style: normalTextStyle(
                                          fontSize: 10, color: mainColour),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 18 / 9,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                      ),
                      items: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images (4).jpg'),
                              fit: BoxFit.cover,
                            ),
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
                                Text("Kirtidan gadhvi",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: normalTextStyle(
                                        fontSize: 12, color: white)),
                                Text("Garba King",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: mediumTextStyle(
                                        fontSize: 14, color: white)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  'DANDIYA RAAS\n2024',
                                  style: normalTextStyle(
                                      fontSize: 12, color: white),
                                ),
                                SizedBox(height: 50),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('BOOK NOW'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                  SizedBox(
                    height: 19,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      'Find New Experience',
                      style: boldTextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Enage, Investigate,Draft aplan',
                          style: normalTextStyle(fontSize: 12),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.to(AllExperience());
                              },
                              child: Text(
                                'See all',
                                style: mediumTextStyle(
                                  fontSize: 13,
                                  color: mainColour,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 14,
                              color: mainColour,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150, // Set the height for the ListView
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Experience
                          .length, // Assuming one item for this container
                      itemBuilder: (context, index) {
                        return Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Experience[index]
                                  ['image']), // Set the background image
                              fit: BoxFit.cover, // Adjust the image fit
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
                                  style:
                                      boldTextStyle(fontSize: 16, color: white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '15+ Events',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: mediumTextStyle(
                                      fontSize: 12, color: white),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      children: [
                        Text(
                          'P R E M I E R E',
                          style: boldTextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.play_circle_fill,
                          color: mainColour,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Watch new popular events',
                          style: normalTextStyle(fontSize: 12),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.to(AllPremiere());
                              },
                              child: Text(
                                'See all',
                                style: mediumTextStyle(
                                    fontSize: 13, color: mainColour),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 14,
                              color: mainColour,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 260,
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // Makes the list horizontal
                      itemCount: PREMIERE.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 140,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5), // Add space between items
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 180,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    image: DecorationImage(
                                      image: AssetImage(PREMIERE[index][
                                          'image']), // Set the background image
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 10,
                                    ),
                                    Text(
                                      '12-12-2024',
                                      style: mediumTextStyle(fontSize: 8),
                                    ),
                                    Icon(
                                      Icons.stop_circle_outlined,
                                      size: 10,
                                      color: mainColour,
                                    ),
                                    Text(
                                      'Kirtidan',
                                      style: boldTextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
