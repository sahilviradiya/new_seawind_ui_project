import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:seawind_ui_project/Widget/bottom_bar.dart';

import '../Widget/GlobalCustomContainer.dart';
import '../Widget/GlobalTextfeild.dart';
import '../utils/color.dart';

class Region_screen extends StatelessWidget {
  Region_screen({super.key});

  final List<Map<String, String>> items = [
    {"image": "assets/old-building.png", "text": "Gujarat"},
    {"image": "assets/building (1).png", "text": "Mumbai"},
    {"image": "assets/business.png", "text": "Delhi-NCR"},
    {"image": "assets/government (1).png", "text": "Bengaluru"},
    {"image": "assets/government.png", "text": "Hyderabad"},
    {"image": "assets/green-city.png", "text": "Tamil Nadu"},
    {"image": "assets/office-building.png", "text": "Kerala"},
    {"image": "assets/school.png", "text": "Mumbai"},
    {"image": "assets/skyline.png", "text": "Udaipur"},
  ];
  final List<String> customContainerTexts = [
    "New Delhi ",
    "Chennai",
    "Kolkata",
    "Ahmedabad",
    "Jaipur",
    "Surat",
  ];

  final RxInt selectedIndex = RxInt(-1);
  final RxInt selectedIndex1 = RxInt(-1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick a Region'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Search text field
          globalTextFormField(
            suffixIcon: Icon(
              Icons.my_location_rounded,
              color: mainColour,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: mainColour,
            ),
            hintText: 'Search for your city',
          ),
          SizedBox(height: 8),

          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectedIndex.value = index;
                    Get.to(bottom_bar());
                  },
                  child: Obx(() {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: selectedIndex.value == index
                                  ? Colors.pink
                                  : Colors.grey,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Image.asset(
                              items[index]['image']!,
                              color: selectedIndex.value == index
                                  ? Colors.pink
                                  : Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          items[index]['text']!,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  }),
                );
              },
            ),
          ),
          Text('OTHER CITIES'),
          for (int index = 0; index < customContainerTexts.length; index++) ...[
            GestureDetector(
              onTap: () {
                selectedIndex1.value = index;
                Get.to(bottom_bar());
              },
              child: Obx(() {
                return CustomContainer(
                  text: customContainerTexts[index],
                  borderColor:
                      selectedIndex1.value == index ? Colors.pink : Colors.grey,
                  borderRadius: 10.0,
                );
              }),
            ),
            const SizedBox(height: 10),
          ],
        ]),
      ),
    );
  }
}
