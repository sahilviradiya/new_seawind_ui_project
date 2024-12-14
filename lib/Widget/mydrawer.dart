import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seawind_ui_project/utils/color.dart';
import 'package:seawind_ui_project/utils/decoration.dart';

import '../Screen/authscreen/signinscreen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: white,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(SignIn());
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: mainColour,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 28.0, vertical: 8),
                        child: Text(
                          'Sign In',
                          style: mediumTextStyle(fontSize: 18, color: white),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildListTile(Icons.person, "My Profile", () {}),
            _buildListTile(Icons.today, "List Your Show", () {}),
            _buildListTile(Icons.offline_bolt, "Offers", () {}),
            _buildListTile(Icons.change_circle_sharp, "About", () {}),
            _buildListTile(Icons.call, "Contact", () {}),
            _buildListTile(Icons.change_history_outlined, "FAQ", () {}),
            _buildListTile(Icons.help, "Help & Support", () {}),
            _buildListTile(Icons.logout, "Sign Out", () {}),
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: blackH),
      title: Text(
        title,
        style: TextStyle(color: blackH),
      ),
      onTap: onTap,
    );
  }
}
