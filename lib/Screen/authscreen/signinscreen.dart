import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seawind_ui_project/Widget/GlobalTextfeild.dart';
import 'package:seawind_ui_project/utils/color.dart';
import 'package:seawind_ui_project/utils/decoration.dart';

import '../../Widget/GlobalMyShow.dart';
import 'verificationscreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 253, 241, 255),
              Color.fromARGB(255, 249, 220, 248),
              Color.fromARGB(255, 249, 220, 248),
              Color(0xFFFFE6F2),
              Color.fromARGB(255, 251, 181, 216),
            ],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LOV',
                      style: boldTextStyle(fontSize: 50),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            width: 30,
                            height: 8,
                            decoration: BoxDecoration(
                              color: mainColour,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 5.0),
                            width: 30,
                            height: 8,
                            decoration: BoxDecoration(
                              color: mainColour,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 8,
                            decoration: BoxDecoration(
                              color: mainColour,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipPath(
                      clipper: TicketClipper(),
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          gradient: LinearGradient(
                            colors: [
                              Colors.pink.shade300,
                              Colors.pink.shade700
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "MY SHOW",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign in',
                    style: boldTextStyle(fontSize: 22),
                  ),
                  globalTextFormField(
                      borderradius: BorderRadius.circular(
                        10,
                      ),
                      containercolor: white,
                      prefixIcon: const Icon(Icons.call),
                      hintText: 'Continue with mobile number'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const verification_screen());
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: mainColour,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'SIGN IN',
                                        style: mediumTextStyle(
                                            fontSize: 18, color: white),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 140, 0, 47),
                                          shape: BoxShape
                                              .circle, // Optional for a circular background
                                        ),
                                        child: const Center(
                                          // Centers the child within the container
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size:
                                                16, // Adjust the size to fit within the container
                                            color: Colors
                                                .white, // Set the icon color for better contrast
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
