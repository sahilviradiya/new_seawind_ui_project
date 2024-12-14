import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seawind_ui_project/Screen/bottombar_screen/event.dart';
import 'package:seawind_ui_project/Screen/bottombar_screen/home.dart';
import 'package:seawind_ui_project/Screen/bottombar_screen/list_show.dart';
import 'package:seawind_ui_project/Screen/bottombar_screen/profile.dart';

import '../Controller/bottombar_controller.dart';
import '../utils/color.dart';

class bottom_bar extends StatelessWidget {
  bottom_bar({super.key});

  final bottombar_controller Bottombarcontroller =
      Get.put(bottombar_controller());

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      home(),
      event(),
      list_show(),
      profile(),
    ];

    return Scaffold(
      body: Obx(() => widgetOptions[Bottombarcontroller.selectedIndex.value]),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Obx(
            () => BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 31),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search, size: 31),
                  label: 'Event',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined, size: 31),
                  label: 'List Show',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline, size: 31),
                  label: 'Profile',
                ),
              ],
              currentIndex: Bottombarcontroller.selectedIndex.value,
              onTap: Bottombarcontroller.onItemTapped,
              backgroundColor: white,
              selectedItemColor: mainColour,
              unselectedItemColor: blackH,
              selectedIconTheme: IconThemeData(color: mainColour),
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true, // Show selected item labels
              showUnselectedLabels: true, // Show unselected item labels
            ),
          ),
        ),
      ),
    );
  }
}
